<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- jQuery 외부 라이브러리 설정 -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<!-- 사용자 정의 자바스크립트 -->
		<script>
			/*로드 이벤트와 레디 이벤트를 사용하는 시점 또는 방법
			 *
			 *아직 로드를 하지 않은 HTML태그가 있음에도 불구하고 해석전에 브라우저가 읽지않은 태그를 사용한다는 실행문을 작성하게 되면
			 *브라우저는 태그를 찾을수 없기에 찾고자 하는 값을 찾을 수 없을것이다.
			 *
			 *주로 레디 이벤트를 사용해서 페이지 초기 단계의 실행문을 실행하게끔 하는게 정론이다.
			*/
			
			//HTML 문서 해석전
			console.log("해석전 브라우저이 찾은 img갯수 : ", $("img").length);
			
			//자원이 전부 다운로드 받은 시점에 함수 실행
			//로드 이벤트
			function loadCompleted() {
				//자원 : HTML 외부의 라이브러리 그리고 사진, 영상, 음악과 같은 자원들을 칭함.
				//이러한 다운로드하는 이벤트를 우리는 로드 이벤트라고 칭한다.
				console.log("모든 자원이 다운로드 완료됨.");
			}
			
			//브라우저가 HTML문서를 해석이 완료된 시점에 콘솔 출력
			//아래 세 실행문은 서로 같은 실행문이다. (사바사 하고싶은대루~)
			//레디 이벤트
			$(document).ready(function () {
				console.log("(1) HTML 해석이 완료되었습니다.");
				//HTML 문서 해석 후 브라우저가 찾은 img갯수
				console.log("(1) 해석후 브라우저이 찾은 img갯수 : ", $("img").length);
			});
			
			$(function() {
				console.log("(2) HTML 해석이 완료되었습니다.");
				//HTML 문서 해석 후 브라우저가 찾은 img갯수
				console.log("(2)해석후 브라우저이 찾은 img갯수 : ", $("img").length);
			});
			$(() => {
				console.log("(3) HTML 해석이 완료되었습니다.");
				//HTML 문서 해석 후 브라우저가 찾은 img갯수
				console.log("(3)해석후 브라우저이 찾은 img갯수 : ", $("img").length);
			})
		</script>
		
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Latest compiled and minified CSS -->
		<!-- 클라이언트에게 라이브러리 파일을 어디 서버에 다운받을 지 배정받는다. -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- Latest compiled JavaScript -->
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body onload="loadCompleted()">
		<div class="card">
    		<div class="card-header">Jquery Ready Event 처리</div>
    		<div class="card-body">
    			<!-- 동기/비동기 
    				알다 시피 프로그램이 HTML페이지를 실행할때 위에서 아래 순서로 내려가며 읽는다.
    				그런데 만약 중간에 다운로드와 같이 실행을 했음에도 바로 완료가 되지않는 작업이 있는경우에는
    				기본적으로 프로그램은 코드 한줄의 실행이 완료될때까지 기다려주지않는다.
    				바로 다음 코드로 넘어가는 이러한 형식을 비동기방식이라고한다.
    			-->
    			<img src="/htmlcssjs/resources/image/photos/photo1.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo2.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo3.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo4.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo5.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo6.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo7.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo8.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo9.jpg" width="50" height="50" me-2/>
    			<img src="/htmlcssjs/resources/image/photos/photo10.jpg" width="50" height="50" me-2/>
    			<button>이미지 다운로드</button>
			</div>
  		</div>
	</body>
</html>