
$(function() {
     $("button[name=add_to_cart_button]").click(function(e) {
        var product_no = $(this).val();
		var param = 'product_no=' + product_no;
		var pty='1';
		var allData = { "product_no": product_no, "pty": pty };
		 console.log(param); 
		 console.log(pty); 
			$.ajax({
			url:"add_cart",
			method:"POST",
			data:allData,
			success: function(login_cart) {
				if(login_cart == 'login') {
					alert('로그인이 필요한 서비스입니다.');
					location.href = 'login';
				} else{
					alert('추가완료');
				}
			}
		})
		e.preventDefault();
	});
	
	 $("button[name=wishlist_button]").click(function(e) {
        var product_no = $(this).val();
		var param = 'product_no=' + product_no;
		 console.log(param);
		$.ajax({
			url:"add_wishlist",
			method:"POST",			
			data:param,
			success: function(result) {
				if(result == 'false') {
					alert('로그인이 필요한 서비스입니다.');
					location.href = 'login';
				} else if(result == 'true') {
					alert('찜 완료');
				}
			}
		})
		e.preventDefault();
	});
   
	
		
})



