var insertData_SQL_FILE_PATH = "db/sql/register/insertData";
var FILE_NAME = "register_dblogic.js";

function insertData(sqlParam) {
  var result = executeSQLByTenantDB(insertData_SQL_FILE_PATH, sqlParam);
  return result;
}

function executeSQLByTenantDB(sqlpath, param) {
  try {

    var tenantDatabase = new TenantDatabase();
    Debug.console("param: ", ImJson.toJSONString(param));
    var result = tenantDatabase.executeByTemplate(sqlpath, param);

    if (result.error) {
      throw new Error(result.getMessage());
    }
  } catch (e) {
    throw new Error(e.message);
  }
  return result;

}