<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script>
			function changeContent() {
				//div1를 아이디로 갖는 요소를 찾는다.
				let el_div = document.querySelector("#div1");
				//기존 내용을 대체한다.
				el_div.innerHTML = "<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>";
			}
			
			function appendContent() {
				let el_div = document.querySelector("#div1");
				//새로운 엘리먼트 생성
				const el_img = document.createElement("img");
				el_img.setAttribute("src", "/htmlcssjs/resources/image/photos/photo2.jpg");
				el_img.setAttribute("width", "150");
				//기존 내용의 뒤에 새로운 엘리먼트 추가
				el_div.appendChild(el_img);
			}
			
			function deleteContent() {
				let el_div = document.querySelector("#div1");
				//마지막에 추가했던 이미지를 추가한다.
				el_div.removeChild(el_div.lastElementChild);
			}
			
			function changeStyle() {
				var el_img1 = document.querySelector("#img1");
				el_img1.style.width = "50px";
				el_img1.style.height = "50px";
				el_img1.style.borderRadius = "25px";
				el_img1.style.borderWidth = "5px";
				el_img1.style.borderColor = "red";
				el_img1.style.borderStyle = "solid";
			}
			
			function changeAttribute() {
				var el_img2 = document.querySelector("#img2");
				el_img2.src = "/htmlcssjs/resources/image/photos/photo6.jpg";
				el_img2.setAttribute("src", "/htmlcssjs/resources/image/photos/photo6.jpg");
				console.log("작업됬나?");
			}
		</script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
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