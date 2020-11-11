/**
 * 
 */
$(function(){
	$("#login_action_form").validate({
		rules:{
			user_id: {
				required: true,
				email: true
			},
			password: {
				required: true
			}		
		},
		messages: {
			user_id: {
				required: '아이디를 입력하세요',
				email: '올바른 이메일 형식이 아닙니다'
			},
			password: {
				required: '비밀번호를 입력하세요'
			}
		},
		invalidHandler: function() {
			$('#login_error_msg').hide();
		}
		
	});
})