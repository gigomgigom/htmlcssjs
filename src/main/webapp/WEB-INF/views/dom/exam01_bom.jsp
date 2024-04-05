<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Latest compiled and minified CSS -->
		<!-- 클라이언트에게 라이브러리 파일을 어디 서버에 다운받을 지 배정받는다. -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- Latest compiled JavaScript -->
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<script>
			function fun1() {
				//ViewPort의 크기 얻기
				window.console.log("ViewPort의 width: ", window.innerWidth);
				window.console.log("ViewPort의 height: ", window.innerHeight);
			}
			
			function fun2() {
				//https://www.w3schools.com/js/js_window.asp
				//window 객체 프로퍼티
				//주어진 url주소를 새로운 창으로 띄우는 메소드.
				window.open("https://www.naver.com", "mywin", "top=100,left=200,width=350,height=500");
			}
			
			function fun3() {
				//https://www.w3schools.com/jsref/prop_win_location.asp
				//location 객체 프로퍼티
				window.location.href="/htmlcssjs";
			}
			
			function fun4() {
				//https://www.w3schools.com/jsref/prop_win_history.asp
				//History 객체 메소드
				window.history.back();
			}
			
			function fun5() {
				//https://www.w3schools.com/jsref/prop_win_history.asp
				//History 객체 메소드
				window.location.href="/htmlcssjs";
				window.history.forward();
			}
		</script>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="card">
    		<div class="card-header">exam01_bom</div>
    		<div class="card-body">
    			<!-- 
    			BOM과 DOM의 차이 
    			
    			BOM: Browser Object Model
    				브라우저의 정보 수집 및 제어를 위해서 사용하는 객체 모델
    				[BOM] https://www.w3schools.com/js/js_window.asp 참조(Window, Screen, Location...Cookies)
    			
    			DOM: Document Object Model
    				HTML Document 내의 정보 수집 및 제어를 위해서 사용하는 객체 모델    			
    			-->
    			
    			<button class="btn btn-info btn-sm" onclick="fun1()">Window 객체 정보 얻기</button>
    			<button class="btn btn-info btn-sm" onclick="fun2()">Window 띄우기 (팝업)</button>
    			
    			<hr/>
    			
    			<button class="btn btn-info btn-sm" onclick="fun3()">URL변경 (이동)</button>
    			
    			<hr/>
    			
    			<button class="btn btn-info btn-sm" onclick="fun4()">이전으로 이동 (기록)</button>
    			<button class="btn btn-info btn-sm" onclick="fun5()">다음으로 이동 (기록)</button>
			</div>
  		</div>
	</body>
</html>