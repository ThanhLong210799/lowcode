function init(request) {
    var cryption = new Packages.jp.co.intra_mart.system.imtag.SecureParameterCryption();
    var response = Web.getHTTPResponse();
    response.setContentType('application/json; charset=utf-8');
 
    try {
        // 保存先の作成
        var dir = 'upload';
        var storedDirectory = new PublicStorage(dir);
        storedDirectory.makeDirectories();
        // ファイルデータの保存
        var upfile = request.getParameter("local_file");
        upfile.openValueAsBinary(function(reader) {
            var storage = new PublicStorage(dir, upfile.getFileName());
            storage.createAsBinary(function(writer, err) {
                if (err) {
                    response.sendMessageBodyString(ImJson.toJSONString([{
                        "error":err.message
                    }]));
                }
                reader.transferTo(writer);
            });
        });
        // 保存したファイルデータの取得
        var storedFile = new PublicStorage(dir, upfile.getFileName());
        var storedFileSize = storedFile.length();
        Debug.console("storedFileSize", storedFileSize);
        if (storedFileSize == null) {
            response.sendMessageBodyString(ImJson.toJSONString([{
                "error":'Failed to get stored file size.'
            }]));
        } else if (storedFileSize > 1000000) {
            response.sendMessageBodyString(ImJson.toJSONString([{
                "error":'アップロード可能なサイズ(1000KB)を超えています'
            }]));
        }
        // 正常値の返却
        response.sendMessageBodyString(ImJson.toJSONString([{
            "name":upfile.getFileName(),
            "size":storedFileSize
        }]));
    } catch(e) {
        Debug.console(e);
        // エラー情報の返却
        response.sendMessageBodyString(ImJson.toJSONString([{
            "error":e.message
        }]));
    }
}