/**
 * 
 */

$(function() {
	$("#user_update_form").validate({
		rules: {
			user_first_name: {
				required: true
			},
			user_last_name: {
				required: true
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
			}
		},
		messages: {
			user_first_name: {
				required: "이름을 입력하세요"
			},
			user_last_name: {
				required: "성을 입력하세요"
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
			}
		},
		submitHandler: function(e) {
			console.log(e)
			$.ajax({
				url: 'update_user_info',
				method: 'POST',
				data: $('#user_update_form').serialize(),
				dataType: 'text',
				success: function() {
					$('#user_info_update_notice_modal').modal();
					$('.modal-footer button').on('click', function(){
						/*$('#user_password_check').val('');*/
						location.reload();
					})
					
				}
			})
		}
	});
})