/**
 * 
 */
$(function(){
	$("#user_register_form").validate({
		rules: {
			user_first_name: {
				required: true
			},
			user_last_name: {
				required: true
			},
			user_id: {
				required: true,
				email:  true,
				remote: {
					url: 'user_existed_id_check',
					type: 'POST',
					data: {
						user_id: function() {
							return $("#user_id").val();
						}
					}
				}
			},
			user_password: {
				required: true,
				minlength: 8,
				maxlength: 16,
			},
			user_password_check: {
				required: true,
				equalTo: "input[name='user_password']"
			},
			user_birthdate: {
				required: true,
				date: true
			},
			user_phone: {
				required: true,
				digits: true,
				maxlength: 11
			},
			address_street: {
				required: true
			},
			address_street_optional: {
				required: true
			},
			address_city: {
				required: true
			},
			address_state: {
				required: true
			}
		},
		messages: {
			user_first_name: {
				required: "이름을 입력하세요"
			},
			user_last_name: {
				required: "성을 입력하세요"
			},
			user_id: {
				required: "이메일을 입력하세요",
				email:  "유효한 이메일형식이 아닙니다",
				remote: "{0}는 존재하는 아이디 입니다"
			},
			user_password: {
				required: "비밀번호를 입력하세요",
				minlength: '비밀번호는 {0}글자 이상입니다',
				maxlength: '비밀번호는 {0}글자 이하입니다',
			},
			user_password_check: {
				required: "비밀번호를 다시 한번 입력하세요",
				equalTo: "입력한 비밀번호와 일치하지 않습니다"
			},
			user_birthdate: {
				required: "생년월일을 입력하세요",
				date: "유효한 날짜형식이 아닙니다"
			},
			user_phone: {
				required: "전화번호를 입력하세요",
				digits: "숫자가 아닌 문자는 입력할 수 없습니다",
				maxlength: "전화번호는 최대 11자리 입니다"
			},
			address_street: {
				required: "주소를 입력하세요"
			},
			address_street_optional: {
				required: "주소를 입력하세요"
			},
			address_city: {
				required: "주소를 입력하세요"
			},
			address_state: {
				required: "주소를 입력하세요"
			}
		}
	})
})