var DB_LOGIC_PATH = "db/dblogic/search_dblogic";

var $bind = {};
function init(request) {
  try {
    initMode(request);
  } catch (e) {

  }
}
function initMode(request) {
  $bind.countRow = 0
}

function searchAction(request) {
  var response = Web.getHTTPResponse();
  response.setHeader("Access-Control-Allow-Origin", "*");
  response.setContentType("application/json; charset=utf-8");
  var sqlParam = ImJson.parseJSON(request.callActionParams);
  var ajaxResultObj = new Object();
  var searchResult = {};
  try {
    if (isBlank(sqlParam.full_name) && isBlank(sqlParam.user_name)
        && sqlParam.delete_flag == 0) {
      searchResult = querySearchTargetFunc(sqlParam);
    }
    searchResult = querySearchMaster(sqlParam);
    searchResult.data.map(function(item) {
      // create infor, edit, del column
      item.infor = "";
      item.edit = "";
      item.del = "";
    });
    if (searchResult.countRow > 0 && searchResult.countRow <= 100) {
      ajaxResultObj.error = false;
      ajaxResultObj.errorMessage = '';
      ajaxResultObj.detailMessage = '';
      ajaxResultObj.successMessage = '';
      ajaxResultObj.data = {
        searchData : searchResult.data,
        countRow : searchResult.countRow
      };
    } else if (searchResult.countRow > 100) {
      ajaxResultObj.error = false;
      ajaxResultObj.errorMessage = '';
      ajaxResultObj.detailMessage = '';
      ajaxResultObj.successMessage = '';
      ajaxResultObj.warning = true;
      ajaxResultObj.warningMessage = "検索結果が100件を超えています。";
      ajaxResultObj.data = {
        searchData : searchResult.data.slice(searchResult.data.length - 100,
            searchResult.data.length),
        countRow : 100
      };
    } else if (searchResult.countRow == 0) {
      ajaxResultObj.error = false;
      ajaxResultObj.successMessage = "検索結果はありません。";
      ajaxResultObj.data = {
        searchData : searchResult.data,
        countRow : searchResult.countRow
      };
    }
  } catch (e) {
    ajaxResultObj.error = true;
    ajaxResultObj.errorMessage = e.message;
    ajaxResultObj.successMessage = '';
    ajaxResultObj.data = {};
  }
  response.sendMessageBodyString(JSON.stringify(ajaxResultObj));
}
// json response
function jsonResponse(object) {
  // log
  var response = Web.getHTTPResponse();
  response.setHeader('Access-Control-Allow-Origin', '*');
  response.setContentType('application/json; charset=utf-8');
  response.sendMessageBodyString(ImJson.toJSONString(object));
}
function updateCandidate(request) {
  var callActionParams = ImJson.parseJSON(request.callActionParams);
  var objData = {};
  objData.callActionParams = callActionParams;
  updateCandidateDataAction(objData);
}
function updateCandidateDataAction(objData) {
  var ajaxResultObj = {
    error : false
  };
  var searchResult = {};
  var sqlParam = {};
  var sqlParamSearch
  Transaction.begin(function() {
    try {
      objData.callActionParams.forEach(function(item) {
        sqlParam.candidate_id = item.candidate_id;
        var result = updateCandidateData(sqlParam);
        ajaxResultObj.error = false;
        ajaxResultObj.errorMessage = '';
        ajaxResultObj.detailMessage = '';
        ajaxResultObj.successMessage = '';
      })
    } catch (e) {
      Transaction.rollback();
      ajaxResultObj.error = true;
      ajaxResultObj.errorMessage = "システム管理者に連絡してください。（データベースエラー）";
    }
  });
  jsonResponse(ajaxResultObj);
}
function updateCandidateData(objData) {
  var updateResult = Content.executeFunction(DB_LOGIC_PATH,
      "updateCandidateData", objData);
  return updateResult;
}
function querySearchTargetFunc(sqlParam) {
  var searchResult = Content.executeFunction(DB_LOGIC_PATH,
      'selectSearchTarget', sqlParam);
  return searchResult;
}
function querySearchMaster(parameter) {
  var sqlParam = {
    full_name : parameter.full_name,
    user_name : parameter.user_name,
    delete_flag : parameter.delete_flag
  };
  var searchResult = Content.executeFunction(DB_LOGIC_PATH,
      'selectSearchMaster', sqlParam);
  return searchResult;
}