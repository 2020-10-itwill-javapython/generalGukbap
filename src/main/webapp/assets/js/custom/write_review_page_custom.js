/**
 * 
 */

$(function() {
	$('#write_review_form').validate({
		rules: {
			review_title: {
				required: true
			},
			review_content: {
				required: true
			},
			image_file: {
				required: true
			}
		},
		messages: {
			review_title: {
				required: '제목을 입력하세요'
			},
			review_content: {
				required: '내용을 입력하세요'
			},
			image_file: {
				required: '이미지를 업로드하셔야 합니다',
			}
		}
	})

	$('#submit_button').click(function(e) {
		var form = $('#write_review_form')[0];
		var fd = new FormData(form);

		$.ajax({
			url: 'write_review',
			processData: false,
			contentType: false,
			data: fd,
			type: 'POST',
			success: function() {
				location.href = 'blog_sidebar';
			}
		})
		
		e.preventDefault();
	})

})