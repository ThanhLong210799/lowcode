var selectSearchTarget_SQL_FILE_PATH ="db/sql/search/selectSearchTarget";
var selectSearchMaster_SQL_FILE_PATH ="db/sql/search/selectSearchMaster";
var updateCandidate_SQL_FILE_PATH ="db/sql/search/updateCandidate";

var FILE_NAME = "search_dblogic.js";

function selectSearchTarget(sqlParam) {
  var result = executeSQLByTenantDB(selectSearchTarget_SQL_FILE_PATH, sqlParam);
  return result;
}
function selectSearchMaster(sqlParam) {
  var result = executeSQLByTenantDB(selectSearchMaster_SQL_FILE_PATH, sqlParam);
  return result;
}
function updateCandidateData(sqlParam) {
  var result = executeSQLByTenantDB(updateCandidate_SQL_FILE_PATH, sqlParam);
  return result;
}


function executeSQLByTenantDB(sqlpath, param) {
  try {
    var tenantDatabase = new TenantDatabase();
    var result = tenantDatabase.executeByTemplate(sqlpath, param);
    if (result.error) {
      throw new Error(result.getMessage());
    }
  } catch (e) {
    throw new Error(MessageManager.getMessage("", e.message.replace(/ig/, "")));
  }
  return result;

}