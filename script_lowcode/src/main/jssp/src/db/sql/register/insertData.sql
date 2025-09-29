INSERT INTO candidate (
	full_name,
	phone_number,
	apply_position_developer,
	apply_position_tester,
	birth_day,
	language,
	gender,
	cv_attach,
	self_introduction,
	introduction_person,
	note,
	user_name,
	password,
	allow_login,
	delete_flag)  
VALUES (
	/*full_name:string*/'',
	/*phone_number:string*/'',
	/*apply_position_developer:integer*/'',
	/*apply_position_tester:integer*/'',
	CASE
		WHEN COALESCE(/*birth_day:string*/,'') = '' THEN NULL
		ELSE TO_DATE(/*birth_day:string*/, 'YYYY/MM/DD')
	END,
	/*language:string*/'',
	/*gender:string*/'',
	/*cv_attach:string*/'',
	/*self_introduction:string*/'',
	/*introduction_person:string*/'',
	/*note:string*/'',
	/*user_name:string*/'',
	/*password:string*/'',
	/*allow_login:integer*/'',
	'0'
);