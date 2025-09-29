//==============================================================================
//    アクション処理プログラム テンプレート
//
//        【 入力 】 parameter                   : ワークフローパラメータオブジェクト
//                   parameter.loginGroupId      : ログイングループID
//                   parameter.localeId          : ロケールID
//                   parameter.targetLocales     : ターゲットロケールID
//                   parameter.contentsId        : コンテンツID
//                   parameter.contentsVersionId : コンテンツバージョンID
//                   parameter.routeId           : ルートID
//                   parameter.routeVersionId    : ルートバージョンID
//                   parameter.flowId            : フローID
//                   parameter.flowVersionId     : フローバージョンID
//                   parameter.applyBaseDate     : 申請基準日
//                   parameter.processDate       : 処理日/到達日
//                   parameter.systemMatterId    : システム案件ID
//                   parameter.userDataId        : ユーザデータID
//                   parameter.matterName        : 案件名
//                   parameter.matterNumber      : 案件番号
//                   parameter.priorityLevel     : 優先度
//                   parameter.parameter         : 実行プログラムパス
//                   parameter.actFlag           : 代理フラグ
//                   parameter.nodeId            : ノードID
//                   parameter.nextNodeIds       : 移動先(次ノード)ノードID [差戻し、引戻し、案件操作時に設定されます。]
//                   parameter.authUserCd        : 処理権限者コード
//                   parameter.execUserCd        : 処理実行者コード
//                   parameter.resultStatus      : 処理結果ステータス
//                   parameter.authCompanyCode   : 権限会社コード
//                   parameter.authOrgzSetCode   : 権限組織セットコード
//                   parameter.authOrgzCode      : 権限組織コード
//                   parameter.processComment    : 処理コメント
//                   parameter.lumpProcessFlag   : 一括処理フラグ
//                   parameter.autoProcessFlag   : 自動処理フラグ [到達処理で自動承認やバッチで自動処理される時に設定されます。]
//                   userParameter               : リクエストパラメータオブジェクト
//
//        【返却値】 result.resultFlag           : 結果フラグ     [true:成功/false:失敗]
//                   result.message              : 結果メッセージ [結果フラグが失敗の場合のみ]
//                   result.data                 : 案件番号       [最大サイズ：20バイト
//                                                                 申請/再申請/申請(一時保存案件)/申請(未申請状態案件)の場合のみ
//                                                                 null以外の場合に案件番号を上書きします。]
//
//        【 詳細 】 このプログラム中ではDBトランザクションを張らないで下さい。
//
//==============================================================================

// 申請
function apply(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - apply -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - apply -----" );

    var oResult = WorkflowNumberingManager.getNumber();
    if (!oResult.resultFlag) {
        result = {
                  "resultFlag" : false,
                  "message"    : "",
                  "data"       : null
                 }
        return result;
    }
   
    var result = {
                  "resultFlag" : true,
                  "message"    : "",
                  "data"       : oResult.data
                 };
    
    var staffCd = userParameter ? userParameter.staff_cd || "" : "";
    var staffName = userParameter ? userParameter.staff_nm || "" : "";
    var leaveType = userParameter ? userParameter.leave_type || "" : "";
    var startHour = userParameter ? userParameter.start_hour || "" : "";
    var startMinute = userParameter ? userParameter.start_minute || "" : "";
    var startDate = userParameter ? userParameter.start_date || "" : "";
    var endHour = userParameter ? userParameter.end_hour || "" : "";
    var endMinute = userParameter ? userParameter.end_minute || "" : "";
    var endDate = userParameter ? userParameter.end_date || "" : "";
    var reason = userParameter ? userParameter.reason || "" : "";
    var userData = {
                 "user_data_id"     : parameter.userDataId,
                 "system_matter_id" : parameter.systemMatterId,
                 "staff_cd"        : staffCd,
                 "staff_name"      : staffName,
                 "leave_type"       : leaveType,
                 "start_hour"       : startHour,
                 "start_minute"     : startMinute,
                 "start_date"     : new Date(startDate),
                 "end_hour"     : endHour,
                 "end_minute"     : endMinute,
                 "end_date"     : new Date(endDate),
                 "reason"         : reason
                };       
    var res = Content.executeFunction("scriptModal_workflow/sql/common","createData",userData);
    if (!res) {
        result = {
                  "resultFlag" : false,
                  "message"    : "",
                  "data"       : null
                 };
    }
    return result;
}

// 再申請
function reapply(parameter,userParameter) {
	Debug.print( "----- ActionProcess.js - apply -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - apply -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : "",
                  "data"       : null
                 };
    
    var staffCd = userParameter ? userParameter.staff_cd || "" : "";
    var staffName = userParameter ? userParameter.staff_nm || "" : "";
    var leaveType = userParameter ? userParameter.leave_type || "" : "";
    var startHour = userParameter ? userParameter.start_hour || "" : "";
    var startMinute = userParameter ? userParameter.start_minute || "" : "";
    var startDate = userParameter ? userParameter.start_date || "" : "";
    var endHour = userParameter ? userParameter.end_hour || "" : "";
    var endMinute = userParameter ? userParameter.end_minute || "" : "";
    var endDate = userParameter ? userParameter.end_date || "" : "";
    var reason = userParameter ? userParameter.reason || "" : "";
    
    var userData = {
                 "user_data_id"     : parameter.userDataId,
                 "system_matter_id" : parameter.systemMatterId,
                 "staff_cd"        : staffCd,
                 "staff_name"      : staffName,
                 "leave_type"       : leaveType,
                 "start_hour"       : startHour,
                 "start_minute"     : startMinute,
                 "start_date"     : new Date(startDate),
                 "end_hour"     : endHour,
                 "end_minute"     : endMinute,
                 "end_date"     : new Date(endDate),
                 "reason"         : reason
                };       
    var res = Content.executeFunction("scriptModal_workflow/sql/common","updateData",userData,parameter.userDataId);
    if (!res) {
        result = {
                  "resultFlag" : false,
                  "message"    : "",
                  "data"       : null
                 };
    }
    return result;
}

// 申請(一時保存案件)
function applyFromTempSave(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - applyFromTempSave -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - applyFromTempSave -----" );
    
    var result = {
                  "resultFlag" : true,
                  "message"    : "",
                  "data"       : null
                 };
    return result;
}

// 申請(未申請状態案件)
function applyFromUnapply(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - applyFromUnapply -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - applyFromUnapply -----" );
    
    var result = {
                  "resultFlag" : true,
                  "message"    : "",
                  "data"       : null
                 };
    return result;
}

// 取止め
function discontinue(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - discontinue -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - discontinue -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 引戻し
function pullBack(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - pullBack -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - pullBack -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 差戻し後引戻し
function sendBackToPullBack(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - sendBackToPullBack -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - sendBackToPullBack -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 承認
function approve(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - approve -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - approve -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 承認終了
function approveEnd(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - approveEnd -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - approveEnd -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 否認
function deny(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - deny -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - deny -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 差戻し
function sendBack(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - sendBack -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - sendBack -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 保留
function reserve(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - reserve -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - reserve -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 保留解除
function reserveCancel(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - reserveCancel -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - reserveCancel -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 案件操作
function matterHandle(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - matterHandle -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - matterHandle -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 一時保存（新規登録）
function tempSaveCreate(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - tempSaveCreate -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - tempSaveCreate -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 一時保存（更新）
function tempSaveUpdate(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - tempSaveUpdate -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - tempSaveUpdate -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}

// 一時保存（削除）
function tempSaveDelete(parameter,userParameter) {
    Debug.print( "----- ActionProcess.js - tempSaveDelete -----" );
    Debug.console(parameter);
    Debug.console(userParameter);
    Debug.print( "----- ActionProcess.js - tempSaveDelete -----" );

    var result = {
                  "resultFlag" : true,
                  "message"    : ""
                 };
    return result;
}
