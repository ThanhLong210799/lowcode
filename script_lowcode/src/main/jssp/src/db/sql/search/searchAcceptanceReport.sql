select 
  tar.acceptance_report_id,
  tar.contract_payment_id,
  tar.acceptance_status,
  tc.contract_no,
  tcm.customer_name,
  tqf.project_name,
  tc.person_in_charge,
  to_char(tc.contract_start_date, 'YYYY/MM/DD') || ' ～ ' || to_char(tc.contract_end_date, 'YYYY/MM/DD') as contract_period,
  to_char(tcp.contract_payment_date, 'YYYY/MM/DD') as contract_payment_date,
  mc.type_name
from 
 t_acceptance_report tar
 inner join t_contract tc on tar.contract_id = tc.contract_id
 inner join t_contract_payment tcp on tar.contract_payment_id = tcp.contract_payment_id
 inner join t_quote_final tqf on tc.quote_final_id = tqf.quote_final_id
 inner join t_customer tcm on tqf.customer_id = tcm.customer_id
 inner join m_code mc on mc.code_id = 'D0006' and tar.acceptance_status = mc.type_code
  where
 1 = 1
 /*IF contractNo != null && contractNo != '' */
 and tc.contract_no LIKE '%' || /*contractNo:string*/ || '%'  ESCAPE '#'
/*END*/

 /*IF projectName != null && projectName != '' */
 and tqf.project_name LIKE '%' || /*projectName:string*/ || '%'  ESCAPE '#'
/*END*/

 /*IF acceptanceStatus != null && acceptanceStatus != '' */
 and tar.acceptance_status = /*acceptanceStatus*/
/*END*/

/*IF startDate != null &&  startDate != '' */
   and tc.contract_start_date >= /*startDate:date*/
/*END*/

 /*IF endDate != null &&  endDate != ''*/
 and tc.contract_end_date <= /*endDate:date*/
/*END*/

 /*IF contractPaymentDate != null &&  contractPaymentDate != ''*/
 and tcp.contract_payment_date = /*contractPaymentDate:date*/
/*END*/
  