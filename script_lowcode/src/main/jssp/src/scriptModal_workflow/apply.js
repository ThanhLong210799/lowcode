var staffCd = "";
var staffNm = "";
var reason = "";
var $data = {};
var leave_type = [ 
    {
        label : "" , 
        value : "",
        selected : "true"
    },
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
function init ( request ) {
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
    var accountContext = Contexts.getAccountContext();
    var userContext = Contexts.getUserContext();
    staffCd = userContext.userProfile.userCd;
    staffNm = userContext.userProfile.userName;
}