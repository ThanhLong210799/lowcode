var selectAcceptanceReport_SQL_FILE_PATH ="db/sql/search/searchAcceptanceReport";

var FILE_NAME = "searchAcceptanceReport_dblogic.js";
var DATA_SOURCE_ID = "sys_sale_admin";

function selectAcceptanceReport(sqlParam) {
	sqlParam.startDate = new Date(sqlParam.startDate);
	sqlParam.endDate = new Date(sqlParam.endDate);
	sqlParam.contractPaymentDate = new Date(sqlParam.contractPaymentDate);
	
	var result = executeSQLByShareDB(selectAcceptanceReport_SQL_FILE_PATH , sqlParam);
  
  return result;
}


function executeSQLByShareDB(sqlpath, param) {
	
  try {
	  
	var sharedDatabase = new SharedDatabase(DATA_SOURCE_ID);
    var result = sharedDatabase.executeByTemplate(sqlpath, param);
    if (result.error) {
      throw new Error(result.getMessage());
    }
  } catch (e) {
    throw new Error(MessageManager.getMessage("", e.message.replace(/ig/, "")));
  }
  return result;

}