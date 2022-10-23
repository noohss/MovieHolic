function valid_check() { //회원가입 form 유효성 검사.
	const frm = document.forms[0];
	const first_name = frm.first_name;
	const last_name = frm.last_name;
	const member_id = frm.member_id;
	const member_pw = frm.member_pw;
	const nickname = frm.nickname;
	const phone = frm.phone;
	let regex;
	let isValid = true;
	
	// 1. 회원의 성, 이름에는 한글과 영어 소문자만 입력 가능하고 (1~20)글자이다.
	regex = /^[가-힣a-z]{1,20}$/;
	
	if(regex.test(last_name.value) === false) {
		alert('회원의 성에는 한글과 영어 소문자만 입력 가능하고 (1~20)글자입니다.');
		last_name.focus();
		isValid = false;
	}
	
	if(regex.test(first_name.value) === false) {
		alert('회원의 이름에는 한글과 영어 소문자만 입력 가능하고 (1~20)글자입니다.');
		first_name.focus();
		isValid = false;
	}
	
	// 2. 아이디는 알파벳 소문자와 숫자만 입력 가능하고 (8~15자리) 이다.
	regex = /^[a-z0-9]{8,15}$/;
	if(regex.test(member_id.value) === false) {
		alert('아이디는 알파벳 소문자와 숫자만 입력 가능하고 (8~15)자리입니다.');
		member_id.focus();
		isValid = false;
	}
	
	// 3. (1)비밀번호는 숫자, 영어, 특수문자들을 각각 하나 이상 포함해야한다.
	//		(허용되는 특수문자: !, @, #, $, %, ^, +, -, =), 공백 포함 불가.
	//	  (2)비밀번호는 최소 8자리 최대 20자리이다.
	regex = /^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^+\-=])(?=\S+$).*$/;
	if(regex.test(member_pw.value) === false) {
		alert('비밀번호는 숫자, 영어, 특수문자를 하나 이상 포함해야합니다.');
		member_pw.focus();
		isValid = false;
	}
	regex = /^[0-9a-zA-Z!@#$%^+-=]{8,20}$/;
	if(regex.test(member_pw.value) === false) {
		alert('비밀번호는 최소 8자리 최대 20자리입니다.');
		member_pw.focus();
		isValid = false;
	}
	// 4. 전화번호
	regex = /^\d{3}-\d{4}-\d{4}$/;
	if(regex.test(phone.value) === false) {
		alert('잘못된 핸드폰번호 형식입니다. ( - (하이픈)기호를 사용해야합니다.)');
		phone.focus();
		isValid = false;
	}
	
	if(isValid) {
		frm.submit();
	} else {
		alert('회원 가입 실패');
	}
	
}
