var langList = [{
  label : "",
  value : ""
},{
  label : "英語",
  value : "0"
}, {
  label : "日本",
  value : "1"
} ];
var DB_LOGIC_PATH = "db/dblogic/register_dblogic";
var FILE_NAME = "register.js";

var $errMsg = {
  Error0001 : "自己紹介は200桁以内で入力してください。"
};
// json response
function jsonResponse(object) {
  // log
  var response = Web.getHTTPResponse();
  response.setHeader('Access-Control-Allow-Origin', '*');
  response.setContentType('application/json; charset=utf-8');
  response.sendMessageBodyString(ImJson.toJSONString(object));
}

function saveData(request) {
  var callActionParams = ImJson.parseJSON(request.callActionParams);
  var objData = callActionParams.objData;
  insertDataAction(objData);
}

function insertDataAction(objData) {
  var ajaxResultObj = new Object();
 
  var sqlParam = {
	    full_name : objData.fullName,
	    phone_number : objData.phoneNumber,
	    apply_position_developer : objData.applyPositionDeveloper,
	    apply_position_tester : objData.applyPositionTester,
	    birth_day : objData.birthDay,
	    language : objData.language,
	    gender : objData.gender,
	    cv_attach : objData.cvAttach,
	    self_introduction :objData.selfIntroduction,
	    introduction_person : objData.introductionPerson,
	    note : objData.note,
	    user_name : objData.userName,
      password : objData.password,
	    allow_login : objData.allowLogin
	  }; 
 
  Transaction.begin(function() {
    try {
      insertCandidate(sqlParam);
      ajaxResultObj.error = false;
      ajaxResultObj.successMessage = "登録に成功しました。"
    } catch (e) {
      Transaction.rollback();
      ajaxResultObj.error = true;
      ajaxResultObj.errorMessage = "システム管理者に連絡してください。（データベースエラー）";
    }
  });
  jsonResponse(ajaxResultObj);
}
function insertCandidate(sqlParam){
  var insertResult = Content.executeFunction(DB_LOGIC_PATH, "insertData",sqlParam);
  return insertResult;
}

