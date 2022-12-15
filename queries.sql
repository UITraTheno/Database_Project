/* 
SQL text file for queries
Group member: Yilin Li, Fuhao Ruan
11/2/2022
*/

SELECT i.InsName  from PHY_INSURER as pi, physician as p, insurer as i  where pi.PHY_PID = p.PID and p.PhyName = "Jason Smith" and i.InsurerID = pi.PHY_INS;

SELECT v.VDate, p.PhyName, v.PCP_OR_NOT, Diagnosis 
from visit as v, physician as p 
where v.VPID = p.PID and v.VDate > "2022-01-01" and v.VDate < "2022-03-31";

SELECT i.InsName 
from employer as e, EMP_INSURER as ei, insurer as i 
where ei.EMP_EID = e.Empid and i.InsurerID = ei.EMP_INS and e.EmpName = 'Jesse Lewis';

SELECT c.CID,c.Amount,c.File_date,c.Paid_date,c.CSSN,c.CPID,c.CDate
from claim as c, physician as p, visit as v 
where v.VSSN = c.CSSN and v.VPID = c.CPID and v.VDate = c.CDate and p.PID = v.VPID and p.PhyName = "Jason Smith" and  ISNULL(c.Paid_date)=1;