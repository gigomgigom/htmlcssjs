<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script>
			function changeContent() {
				//div1를 아이디로 갖는 요소들을 찾는다.
				let jq_div = $("#div1");
				//html()은 매개값을 받으면 set의 역할,  매개값이 없다면 반환값을 갖는 역할
				jq_div.html("<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>");
			}
			
			function appendContent() {
				let jq_div = $("#div1");
				jq_div.append("<img src='/htmlcssjs/resources/image/photos/photo2.jpg' width='150'/>");
			}
			
			function deleteContent() {
				let jq_div = $("#div1");
				//모두 삭제
				//jq_div.html("");

				//제이쿼리의 마지막 요소를 삭제
				jq_div.find("img:last-Child").remove();
			}
			
			function changeStyle() {
				var jq_img1 = $("#img1");
				jq_img1.css("width", "50px");
				jq_img1.css("height", "50px");
				jq_img1.css("borderRadius", "25px");
				jq_img1.css("borderWidth", "5px");
				jq_img1.css("border-color", "red");
				jq_img1.css("border-style", "solid");
			}
			
			//https://www.w3schools.com/jquery/jquery_dom_set.asp
			//속성값 변경하기
			function changeAttribute() {
				var jq_img2 = $("#img2");
				jq_img2.attr("src", "/htmlcssjs/resources/image/photos/photo6.jpg");
			}
		</script>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- jQuery 외부 라이브러리 설정 -->
      	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<!-- Latest compiled and minified CSS -->
		<!-- 클라이언트에게 라이브러리 파일을 어디 서버에 다운받을 지 배정받는다. -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- Latest compiled JavaScript -->
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<meta charset="UTF-8">
		<title>exam03_element_manipulation</title>
	</head>
	<body>
		<div class="card">
    		<div class="card-header">exam03_element_manipulation</div>
    		<div class="card-body">
    			<div class="card">
    				<div class="card-header">엘리먼트 변경 추가 삭제</div>
    				<div class="card-body">
    					<button onclick="changeContent()" class="btn btn-warning btn-sm">변경</button>
    					<button onclick="appendContent()" class="btn btn-warning btn-sm">추가</button>
    					<button onclick="deleteContent()" class="btn btn-warning btn-sm">삭제</button>
    					<hr/>
    					<div id="div1"></div>
					</div>
					<div class="card-header">스타일 변경</div>
    				<div class="card-body">
    					<button onclick="changeStyle()" class="btn btn-warning btn-sm">스타일 변경</button>
    					<hr/>
    					<div id="div2">
    						<img id="img1" src="/htmlcssjs/resources/image/photos/photo3.jpg" width="150"/>
    						<img class="rounded-circle"
    							src="/htmlcssjs/resources/image/photos/photo4.jpg"
    							width="50" height="50"/>
    					</div>
					</div>
					<div class="card-header">스타일 변경</div>
    				<div class="card-body">
    					<button onclick="changeAttribute()" class="btn btn-warning btn-sm">속성값 변경</button>
    					<hr/>
    					<div id="div3">
    						<img id="img2" src="/htmlcssjs/resources/image/photos/photo5.jpg"
    						class="rounded-circle" width="100" height="100"/>
    					</div>
					</div>
  				</div>
			</div>
  		</div>
	</body>
</html>