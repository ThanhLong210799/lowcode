var $data = {};
var $item = {
    staff_cd    : "",
    staff_name  : "",
    start_hour   : "",
    start_minute : "",
    start_date : "",
    end_hour : "",
    end_minute : "",
    end_date : "",
    reason : ""
};
var leave_type = [ 
    {
        label : "有給休暇" , 
        value : "1",
        selected : "false"
    },
    {
        label : "無給休暇" , 
        value : "2",
        selected : "false"
    },
    {
        label : "産休" , 
        value : "3",
        selected : "false"
    },
    {
        label : "保険休業" , 
        value : "4",
        selected : "false"
    }
];
function init (request) {
	$data = {
        imwGroupId              : request.imwGroupId,
        imwUserCode             : request.imwUserCode,
        imwPageType             : request.imwPageType,
        imwUserDataId           : request.imwUserDataId,
        imwSystemMatterId       : request.imwSystemMatterId,
        imwNodeId               : request.imwNodeId,
        imwArriveType           : request.imwArriveType,
        imwAuthUserCode         : request.imwAuthUserCode,
        imwApplyBaseDate        : request.imwApplyBaseDate,
        imwContentsId           : request.imwContentsId,
        imwContentsVersionId    : request.imwContentsVersionId,
        imwRouteId              : request.imwRouteId,
        imwRouteVersionId       : request.imwRouteVersionId,
        imwFlowId               : request.imwFlowId,
        imwFlowVersionId        : request.imwFlowVersionId,
        imwCallOriginalPagePath : request.imwCallOriginalPagePath,
        imwCallOriginalParams   : request.imwCallOriginalParams
    };

    var result = Content.executeFunction("scriptModal_workflow/sql/common","getData",$data.imwUserDataId);
    if (!isNull(result)) {
        $item = {
            staff_cd    : result.staff_cd,
            staff_name  : result.staff_name,
            start_hour   : result.start_hour,
            start_minute : result.start_minute,
            start_date : formatDate(result.start_date),
            end_hour : result.end_hour,
            end_minute : result.end_minute,
            end_date : formatDate(result.end_date),
            reason : result.reason
        };
    };
    for(var i = 0;i < leave_type.length; i++){
    	if(leave_type[i].value == result.leave_type){
    		leave_type[i].selected = "true";
    	}
    }
}

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;

    return [year, month, day].join('/');
}
 