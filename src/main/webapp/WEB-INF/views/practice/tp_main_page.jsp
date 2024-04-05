<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 사용자 정의 자바스크립트 -->
<script>
		
		</script>
<!-- jQuery 외부 라이브러리 설정 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

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
<title>MainPage</title>
</head>
<body>
	<div style="height:900px"></div>
	<!-- 추천상품 -->
	<div id="recommend" class="container-fluid">
		<div class="d-flex flex-column align-items-center justify-content-center">
			<p>추천상품</p>
			<div class="bg-black" style="height: 2px; width: 30px"></div>
		</div>
		<div id="rcmd-product-list" class="mt-4 w-50 d-flex align-items-center justify-content-center">
			
			<div id="rcmd-product-1" class="w-25 p-1 bg-primary">
				<div style="height: 200px" class="bg-dark">
				</div>
			</div>
			<div id="rcmd-product-2" class="w-25 p-1 bg-dark">
				<div style="height: 200px" class="bg-primary">
				</div>
			</div>
			<div id="rcmd-product-3" class="w-25 p-1 bg-primary">
				<div style="height: 200px" class="bg-dark">
				</div>
			</div>
			<div id="rcmd-product-4" class="w-25 p-1 bg-dark">
				<div style="height: 200px" class="bg-primary">
				</div>
			</div>
		</div>
	</div>
</body>
</html>