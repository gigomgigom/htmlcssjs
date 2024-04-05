<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- 사용자 정의 자바스크립트 -->
		<script>
			//jQuery 객체가 가지고 있는 메소드 사용
			function changeBgColor1() {
				//jQuery 객체 얻기
				
				//CSS 선택자 문법을 활용하여 해당하는 객체들의 배열이 나오게 된다.
				var jq_color_div = $(".colorDiv");
				
				console.log(jq_color_div);
				//jquery객체가 갖고 있는 메소드 호출
				//jq_color_div.css("background-color", "orange");
				jq_color_div.addClass("bg-danger");
			}
			
			function changeBgColor2() {
				//기존 바닐라 자바스크립트방식으로 작성한 코드
				var el_color_div = document.querySelectorAll(".colorDiv");
				console.log(el_color_div);
				
				for(var el of el_color_div) {
					el.classList.add("bg-danger");
				}
			}
		</script>
		<!-- jQuery 외부 라이브러리 설정 -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Latest compiled and minified CSS -->
		<!-- 클라이언트에게 라이브러리 파일을 어디 서버에 다운받을 지 배정받는다. -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- Latest compiled JavaScript -->
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<meta charset="UTF-8">
		<title>JQuery 객체란?</title>
	</head>
	<body>
		<div class="card">
    		<div class="card-header">exam01_jquery_object</div>
    		<div class="card-body">
    			<!-- 
    			[jQuery 객체란]
    			1. jQuery api를 이용해서 만들어진 객체
    			2. jQuery 객체 내부에는 Element 객체 배열이 저장되어있다.
    			3. jQuery 객체 내부에는 Element 객체들을 일괄적으로 변경하는 메소드를 포함하고 있다.
    			
    			--jQuery Object ---------------------------------------
				|                                                     |
				|  method1(), method2(), method3(), ...               |
				|                                                     |
				|-----------------------------------------------------|
				|    0    |    1    |    2    | ...                   |
				| Element | Element | Element | ...                   |
				-------------------------------------------------------
    			-->
    			<button onclick="changeBgColor()" class="btn btn-info btn-sm">배경색 변경</button>
    			<hr/>
    			
    			<div class="d-flex">
    				<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
    				<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
    				<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
    			</div>
			</div>
  		</div>
	</body>
</html>