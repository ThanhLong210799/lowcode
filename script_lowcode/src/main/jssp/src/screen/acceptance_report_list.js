var DB_LOGIC_PATH = "db/dblogic/searchAcceptanceReport_dblogic";

function searchAction(request) {
  var response = Web.getHTTPResponse();
  response.setHeader("Access-Control-Allow-Origin", "*");
  response.setContentType("application/json; charset=utf-8");
  var sqlParam = ImJson.parseJSON(request.callActionParams);
  var ajaxResultObj = new Object();
  var searchResult = {};
  try {

    searchResult = querySearchMaster(sqlParam);

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

function querySearchMaster(sqlParam) {
  var searchResult = Content.executeFunction(DB_LOGIC_PATH,
      'selectAcceptanceReport', sqlParam);
  return searchResult;
}