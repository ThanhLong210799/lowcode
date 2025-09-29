function getData(user_data_id) {
	let sql ="select * from leave_application_form where user_data_id = ?";
	let pra = [DbParameter.string(user_data_id)];
	let tdb = new TenantDatabase();
	let res = tdb.select(sql, pra);
	if (res.error) {
		Transfer.toErrorPage({
		    title: "",
		    message: "",
		    detail: [res.errorMessage]
		});
		return null;
	} else if (res.countRow == 0) {
	    Transfer.toErrorPage({
	        title: "",
	        message: "",
	        detail: ""
	    });
	    return null;
	}
	return res.data[0];
}

function createData(userData) {
	let tdb = new TenantDatabase();
	let res = tdb.insert("leave_application_form",userData);
	if (res.error) {
		return false;
	}
	return true;
}

function updateData(userData,user_data_id) {
	let sql = "user_data_id = ?";
	let pra = [DbParameter.string(user_data_id)];
	let tdb = new TenantDatabase();
	let res = tdb.update("leave_application_form",userData,sql,pra);
	if (res.error) {
		return false;
	}
	return true;
}

function removeData(user_data_id) {
	let sql = "user_data_id = ?";
	let pra = [DbParameter.string(user_data_id)];
	let tdb = new TenantDatabase();
	let res = tdb.remove("leave_application_form",sql,pra);
	if (res.error) {
		return false;
	}
	return true;
}