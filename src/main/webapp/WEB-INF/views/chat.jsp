<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="common_header.jsp"/>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1"><!-- 반응형 -->
		<link rel="stylesheet" href="css/bootstrap.css"><!-- css -->
		<link rel="stylesheet" href="css/custom.css"><!-- chat-box(https://www.bootdey.com/) custom에 넣어서 사용 -->
		<title>국밥부장관</title>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script><!-- jquery -->
		<script src="js/bootstrap.js"></script><!-- js -->
		<script type="text/javascript">
		var lastID=0;
		
		function submitFunction(){
			var chatName = $('#chatName').val();
			var chatContent = $('#chatContent').val();
			console.log($('#chatContent'));
			console.log(chatContent);
			$.ajax({ 
				type: "POST",
				url: "./chatSubmitServlet",
				data:{
					chatName : encodeURIComponent(chatName),
					chatContent: encodeURIComponent(chatContent)
				},
			success: function(result){
				if(result == 1){
					autoClosingAlert('#successMessage', 2000);
				}else if(result==0){
					autoClosingAlert('#dangerMessage', 2000);
				}else{
					autoClosingAlert('#warningMessage', 2000);
					}
				}
			});
				$('#chatContent').val('');
		}
		function autoClosingAlert(selector, delay) {
			var alert=$(selector).alert();
			alert.show();
			window.setTimeout( function() {alert.hide()}, delay);

		}
		
		function chatListFunction(type){
			
			$.ajax({ 
				type: "POST",
				url: "./chatListServlet",
				data:{
					listType: type,
				},
				success: function(data){
					if(data == "") return;
					console.log(data);
					var parsed = JSON.parse(data);
					console.log(parsed);
					var result=parsed.result;
					for(var i=0; i<result.length; i++){
						addChat(result[i].name, result[i].content, result[i].time);
					}
					lastID=Number(parsed.last);
					
				}
			});
		}
		function addChat(chatName, chatContent, chatTime){
			$('#chatList').append('<div class="row">'+
									'<div class="col-lg-12">'+
									'<div class="media">'+
									'<a class="pull-left" href="#">'+
									'<img class="media-object img-circle" src="images/z.jpg" alt="">'+
									'</a>'+
									'<div class="media-body">'+
									'<h4 class="media-heading">'+
									chatName+
									'<span class="small pull-right">'+
									chatTime+
									'</span>'+
									'</h4>'+
									'<p>'+
									chatContent+
									'</p>'+
									'</div>'+
									'</div>'+
									'</div>'+
									'</div>'+
									'<hr>');
			$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
		}
		function getInfiniteChat(){
			
			setInterval(function(){
				chatListFunction(lastID);
			}, 1000);
		}
				

		</script>
<body>
 <div class="single_slider d-flex align-items-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="slider_content">
				<img class="media-object" src="images/givecall.png"  width = "1920px" height = "200px"  />
				
 				</div>
			</div>
		</div>
	</div>
</div>
		<div class="container"><!-- 틀 // 서버작동확인 -->
			<div class="container bootstrap snippet">
				<div class="row">
					<div class="col-xs-12">
						<div class="portlet portlet-default">
							<div class="portlet-heading">
								<div class="portlet-title">
									<h4><i class="fa fa-circle text-green"></i>실시간 채팅방</h4>
								</div>
								<div class="clearfix"></div>
							</div><!-- //서버에 실시간 채팅방 바 확인-->
							<div class="chat" class="panel-collapse collapse in">
								<div id="chatList" class="portlet-body chat-widget" style="overflow-y: auto; width: auto; height: 600px;">
								</div>
								<div class="portlet-footer">
										<div class="row">
											<div class="form-group col-xs-4">
												<input style="height: 40px;" type="text"  id="chatName" class="form-control" placeholder="이름" maxlength="8">
											</div>
										</div>
										<div class="row" style="height: 90px">
											<div class="form-group col-xs-10">
												<textarea style="height: 80px;" id="chatContent" class="form-control" placeholder="메시지를 입력하세요" maxlength="100"></textarea>
											</div>
										<div class="form-group col-xs-2">
											<button type="button" class="btn btn-default pull-right" onclick="submitFunction();">전송</button>
											<!-- 전송 버튼을 누르면 submitFunction 실행될 수 있게  -->
											<div class="clearfix"></div>
										</div>
								</div><!-- 아래 쪽에 이름, 내용을 입력하고 전송할 수 있게 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
			<div class="alert alert-success" id="successMessage" style="display: none;">
				<strong>메시지 전송에 성공하였습니다.</strong>
			</div>
			<div class="alert alert-danger" id="dangerMessage" style="display: none;">
				<strong>이름과 내용을 모두 입력해주세요.</strong>
			</div>
			<div class="alert alert-warning" id="warningMessage" style="display: none;">
				<strong>데이터베이스 오류가 발생했습니다.</strong>
			</div>
		</div> 
		<script type="text/javascript">
			$(document).ready(function(){
				chatListFunction('ten');
				getInfiniteChat();
			});
		</script>		
</body>
</html>