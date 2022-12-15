use company;

/*
Trigger 1
*/
delimiter //
create trigger delete_information
    after delete on person
    for each row
begin
    insert into PERSON_DEL_LOG
				values(old.SSN, old.PersonNam, user(), current_date());
end //
delimiter ;

/*
Trigger 2
*/

delimiter //
create trigger PCP_checker
	before insert on person
    for each row
begin
	if new.PerPID not in(
		select PHY_PID
        from person, EMP_INSURER, PHY_INSURER
        where EMP_EID = new.PerEmpid and PHY_INS = EMP_INS
    ) then
		signal sqlstate '45000'
			set message_text = 'Inserting information is not matching!';
	end if;
end //
delimiter ;

/*
Trigger 3
*/

delimiter //
create trigger Paid_date_Update
	before update on claim
    for each row
begin
	if new.Paid_date < old.File_date then
		signal sqlstate '45000'
			set message_text = 'Paid_date should be later than File_date!';
	end if;
end //
delimiter ;

/*
Trigger 4
*/

delimiter //
create trigger visit_limite
	before insert on visit
    for each row
begin
	declare last_visit date;
    select max(VDate) into last_visit
    from visit
    where VSSN = new.VSSN and PCP_OR_NOT = 'Yes';
    
    if DATEDIFF(new.VDate,last_visit) < 30 then
		signal sqlstate '45000'
			set message_text = 'The interval between two consecutive visits is not greate than 30.';
	end if;
end //
delimiter ;



