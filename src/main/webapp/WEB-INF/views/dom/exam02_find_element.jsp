<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script>
			function findElementById() {
				//방법1 특정 id로 지정된 요소들을 찾는다.
				var elP1 = document.getElementById("p1");
				console.log(elP1);
				//방법2 CSS 선택자를 통해서 해당하는 요소를 반환한다.
				elP1 = document.querySelector("#p1");

				console.log(elP1);
			}
			
			function findElementByClass() {
				//방법1
				var el_class1 = document.getElementsByClassName("class1");
				//반환타입 : HTMLCollection
				//만약 들어온 요소수가 2개 이상이라면 컬렉션 형식으로 결과를 저장하는데 이를 배열처럼 사용할 수 있다.
				console.log(el_class1);
				console.log(el_class1[0]);
				
				//방법2
				//querySelector(제일 먼저 있는 하나), querySelectorAll(해당하는 모든 요소들)
				//반환타입 : NodeList
				el_class1 = document.querySelectorAll(".class1");
				console.log(el_class1);
				console.log(el_class1[0]);
			}
			
			function findElementByTag() {
				//방법1
				var el_p = document.getElementsByTagName("p");
				for(var el of el_p) {
					console.log(el);
				}
				console.log("");
				//방법2
				el_p = document.querySelectorAll("p");
				for(var el of el_p) {
					console.log(el);
				}
			}
			
			function findElementByChecked() {
				var el_checked = document.querySelectorAll("[name=skill]:checked");
				
				for(var el of el_checked) {
					console.log(el);
				}
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
		<title>exam02_find_element</title>
	</head>
	<body>
		<div class="card">
    		<div class="card-header">exam02_find_element</div>
    		<div class="card-body">
    			<button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
            	<button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
            	<button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
            	<button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
            	<hr/>
            	<!-- d-flex === display: flex -->
            	<div class="d-flex">
                	<p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
                	<p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
                	<p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
            	</div>
            	<hr/>
            	<div class="d-flex align-items-center justify-content-center" style="height:300px">
                	<div class="me-3"><input type="checkbox" name="skill" value="java"/>java</div>
                	<div class="me-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div> 
                	<div class="me-3"><input type="checkbox" name="skill" value="vue"/>vue</div> 
            	</div>
			</div>
  		</div>
	</body>
</html>