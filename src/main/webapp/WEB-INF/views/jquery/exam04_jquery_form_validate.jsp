<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function handleCheckData() {
		console.log("입력 데이터를 검사합니다.");
		//form 태그의 action 기능을 수행하지 않도록 함.
		event.preventDefault();
		
		const uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
		const emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		const passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
		const phonePattern = /^(010|011)-\d{3,4}-\d{4}$/;
		
		//각 입력 양식의 데이터 검사
		var totalResult = true;
		
		//1) ID 검사
		var jq_uid = $("#uid");
		var jq_uid_span = $("#uidSpan");
		//el_uid = document.joinForm.uid;
		var uidResult = uidPattern.test(jq_uid.val());
		//만약 유효성검사 결과가 false라면
		if(!uidResult) {
			//uid를 입력받는 input태그의 색을 변경한다.
			jq_uid.addClass("bg-danger");
			jq_uid_span.addClass("text-danger");
			totalResult = false;
		} else {
			//색상 원상복귀
			jq_uid.removeClass("bg-danger");
			jq_uid_span.removeClass("text-danger");
		}
		
		//2) Email 검사
		var jq_email = $("#email");
		
		var emailResult = emailPattern.test(jq_email.val());
		if(emailResult) {
			jq_email.removeClass("bg-danger");
		} else {
			jq_email.addClass("bg-danger");
			totalResult = false;
		}
		
		//3) Password 검사
		var jq_password = $("#password");
		var jq_password_span = $("#passwordSpan");
		
		var passwordResult = passwordPattern.test(jq_password.val());
		if(passwordResult) {
			jq_password_span.removeClass("text-danger");
		} else {
			jq_password_span.addClass("text-danger");
			totalResult = false;
		}
		
		//4) Phone 검사
		var jq_phone = $("#phone");
		var jq_phone_span = $("#phoneSpan")
		var phoneResult = phonePattern.test(jq_phone.val());
		if(phoneResult) {
			jq_phone_span.removeClass("text-danger");
			jq_phone_span.html("예) 010-123-1234, 010-1234-1234");
		} else {
			jq_phone_span.html("전화번호 형식이 올바르지 않습니다.");
			jq_phone_span.addClass("text-danger");
			totalResult = false;
		}
		
		//5) 전체적인 유효성검사결과가 true일 경우
		if(totalResult) {
			var jq_form = $("#joinForm");
			//수동으로 action 기능을 수행할 수 있게 한다.
			//제이쿼리 객체에는 submit메서드가 존재하지않는다. 
			//그러므로 배열에 존재하는 엘리먼트를 특정화해서 submit메서드를 호출해야한다.
			jq_form.submit[0]();
		}
	}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery 외부 라이브러리 설정 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
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
</head>
<body>
	<div class="card">
		<div class="card-header">Header</div>
		<div class="card-body">
			<form id="joinForm" name="joinForm" action="#" novalidate
				onsubmit="handleCheckData()"> <!-- novalidate?? 기본적으로 input태그는 유효성검사기능이 장착되어있다. 그 기본기능을 끄는 키워드인것이다. -->
				<div class="mb-3">
					<label for="uid" class="form-label">ID</label> <input type="text" class="form-control"
						id="uid" name="uid" value="Abc123" /> <!-- 입력한 값을 서버나 다음페이지로 넘길때 사용하는 속성이 name 속성이다. -->
						<span id="uidSpan" class="form-text">
							알파벳 대소문자, 숫자를 혼용해서 6자 이상 10장이하
						</span>
				</div>

				<div class="mb-3">
					<label for="email" class="form-label">Email</label> 
					<input type="email"
						class="form-control" id="email" name="email"
						value="Abc123@mycompany.com" />
				</div>

				<div class="mb-3">
					<label for="password" class="form-label">Password</label> <input type="password"
						class="form-control" id="password" name="password"
						value="Abc12345" /> <span id="passwordSpan"
						class="form-text">알파벳 대소문자, 숫자를 혼용해서 8자 이상 15장
						이하</span>
				</div>

				<div class="mb-3">
					<label for="phone" class="form-label">Phone</label> <input type="text"
						class="form-control" id="phone" name="phone" value="010-123-1234" /> <small
						id="phoneSpan" class="form-text">예)
						010-123-1234, 010-1234-1234</small>
				</div>

				<div class="mb-3">
					<label for="city">City</label> <select id="city" name="city"
						class="form-control">
						<option value="seoul">서울</option>
						<option value="pusan">부산</option>
						<option selected value="jeju">제주</option>
					</select>
				</div>
				
				<!-- 체크박스 혹은 라디오 버튼과 같은 입력방식에서 다양한 선택지를 그룹핑할때 name 속성이 사용된다. -->
				<div class="mb-3">
					<label for="city" class="form-label">Hobby</label>
					<div class="d-flex">
					<div class="form-check me-3">
						<input class="form-check-input" type="checkbox" id="hobby1" name="hobby" value="movie" checked /> 
						<label class="form-check-label" for="hobby1">영화 </label> 
					</div>	
					<div class="form-check me-3">
						<input class="form-check-input" type="checkbox" id="hobby2" name="hobby" value="trip" checked /> 
						<label class="form-check-label" for="hobby2">여행 </label>
					</div>
					<div class="form-check m3-3">
						<input class="form-check-input" type="checkbox" id="hobby3" name="hobby" value="game" />
						<label class="form-check-label" for="hobby3">게임 </label>
					</div>
					</div>
				</div>

				<div class="mb-3">
					<label for="city" class="form-label">Job</label>
					<div class="d-flex">
					<div class="form-check me-3">
						<input class="form-check-input" id="job1" type="radio" name="job" value="developer" /> 
						<label class="form-check-label" for="job1">개발자 </label> 
					</div>
					<div class="form-check me-3">
						<input class="form-check-input" id="job2" type="radio" name="job" value="designer" checked /> 
						<label class="form-check-label" for="job2">디자이너 </label>
					</div>
					<div class="form-check me-3">
						<input class="form-check-input" id="job3" type="radio" name="job" value="manager" /> 
						<label class="form-check-label" for="job3">매니저 </label>
					</div>
					</div>
				</div>

				<div class="text-center">
					<input type="submit" class="btn btn-primary btn-sm" value="Join" /> <input
						type="reset" class="btn btn-primary btn-sm" value="Reset" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>