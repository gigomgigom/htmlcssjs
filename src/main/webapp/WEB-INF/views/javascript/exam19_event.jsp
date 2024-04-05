<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Latest compiled and minified CSS -->
<!-- 클라이언트에게 라이브러리 파일을 어디 서버에 다운받을 지 배정받는다. -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
			//이벤트 핸들러 : 이벤트를 처리하는 함수
			function fun1() {
				//웹페이지에서 이벤트가 발생했을때 이벤트 정보를 가져오기 위해서 event를 사용할 수 있다.
				console.log(event.target);
				console.log("버튼1이 클릭됨.")
			}
			
			function fun2() {
				console.log(event.target);
				console.log("버튼2이 클릭됨.")
				//요소가 기본적으로 가지고있는 액션을 막는다.
				event.preventDefault();
			}
			
			function fun3() {
				console.log("사용자가 입력한 내용을 검사합니다.(유효성 검사)");
				//form태그가 기본적으로 가지고있는 액션을 막음.
				event.preventDefault();
			}
			
			function fun4() {
				console.log("입력한 이메일정보가 변경되었습니다.");
				console.log(event.target.value);
				
			}
			
			function fun5() {
				console.log("패스워드 내용이 변경되었습니다.");
				console.log(event.target.value);
			}
			
			function fun6() {
				console.log("체크박스의 상태가 변경되었습니다.");
				if(event.target.checked) {
					console.log("체크됨");
				} else {
					console.log("체크해제됨");
				}
			}
		</script>
</head>
<body>
	<div class="card">
		<div class="card-header">Header</div>
		<div class="card-body">
			<!-- 버튼 스타일을 지정하고 onclick 속성을 통해 클릭했을때 실행할 함수를 선택한다. -->
			<button onclick="fun1()" class="btn btn-info btn-sm">버튼1</button>
			<!-- 만약 a태그의 경우 href속성에 정의되어있는 링크로 이동하게 되는데 이벤트 핸들러까지 정의되어있다면 이벤트핸들러를 먼저 실행하고 href정의된 도메인으로 이동하게 된다. -->
			<a onclick="fun2()" href=".." class="btn btn-info btn-sm">버튼2</a>

			<hr/>

			<form action="/htmlcssjs" onsubmit="fun3()">
				<div class="mb-3 mt-3">
					<label for="email" class="form-label">Email:</label> <input 
						onchange="fun4()" type="email" class="form-control" id="email"
						placeholder="Enter email" name="email">
				</div>
				<div class="mb-3">
					<label for="pwd" class="form-label">Password:</label> <input
						onkeypress="fun5()" type="password" class="form-control" id="pwd"
						placeholder="Enter password" name="pswd">
				</div>
				<div class="form-check mb-3">
					<label class="form-check-label"> <input
						onchange="fun6()"  class="form-check-input" type="checkbox" name="remember">
						Remember me
					</label>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>
</body>
</html>