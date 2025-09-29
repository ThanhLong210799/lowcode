function selectSearchTarget() {
	try {
		var sharedDatabase = new SharedDatabase("sys_sale_admin");
		var result = sharedDatabase.execute("select * from m_code", null)

	} catch (e) {
		throw new Error(e.message);}
	return "Tuấn";
}
