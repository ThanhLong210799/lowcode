var DB_LOGIC_PATH = "db/dblogic/test";

function searchAction() {
	  var response = Web.getHTTPResponse();
	  response.setHeader("Access-Control-Allow-Origin", "*");
	  response.setContentType("application/json; charset=utf-8");
	var searchResult;

	searchResult = querySearchTargetFunc();
	response.sendMessageBodyString(searchResult);

}

function querySearchTargetFunc() {
	var searchResult = Content.executeFunction(DB_LOGIC_PATH,
			'selectSearchTarget',"" );
	return searchResult;
}