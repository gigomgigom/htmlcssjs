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
			function basic() {
				console.log("basic() 실행");
				//배열 생성
				const arr = ["Java", "JavaScriipt", "Vue.js"];
				//배열 항목 정보 읽기
				console.log("1인덱스의 값:", arr[1]);
				console.log("배열의 길이: ", arr.length);
				//배열 항목 변경
				arr[2] = "Spring";
				console.log(arr.length);
				//항목 반복 일기.
				//of: 항목 반복
				//in: 인덱스 반복
				for(var i=0; i<arr.length; i++) {
					console.log(arr[i]);
				}
				
				for(var item of arr) {
					console.log(item);
				}
			}
			
			function appendItem() {
				console.log("appendItem() 실행");
				//배열 생성
				const arr = [];
				//맨뒤의 새항목 추가
				arr.push("html");
				 arr.push("css");
			}
			
			function removeAndInsertItem() {
				console.log("removeAndInsertItem() 실행");
				//배열 생성
				const arr = ["Banana", "Orange", "Apple", "Mango"];
				//항목 삭제(자바스크립트의 배열은 자바의 리스트와 비슷한다.)
				//항목을 삭제할 경우 뒤에 인덱스의 값이 앞으로 당겨진다.
				arr.splice(2, 1);
				console.log(arr);
				
				
				//항목 삽임
				//2인덱스로부터 0개를 삭제하고,세번째 값 이후를 삽입한다.
				arr.splice(2,0,"Lemon", "Kiwi")
				console.log(arr);
				
				arr1 = ["Banana", "Orange", "Apple", "Mango"];
				//2인덱스로부터 두개를 삭제하고 세번째 이후를 삽입한다.
				arr1.splice(2, 2, "Lemon", "Kiwi"); 
			}
			
			function concatArray() {
				const arr1 = ["Banana", "Orange"];
				const arr2 = ["Apple", "Mango"];
				const arr3 = arr1.concat(arr2);
				console.log(arr1);
				console.log(arr2);
				console.log(arr3);
			}
			
			function filterItem() {
				 const arr4 = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				 //작성자가 홍길서일경우
				 const newArr = arr4.filter((item) => {
					 return item.writer === "홍길서";
				 });
				 
				 console.log(newArr);
				 
				 //책번호가 홀수인 경우
				 const newArr2 = arr4.filter((item) => {
					return (item.bno % 2 === 1)
				 });
				 
				 console.log(newArr2);
			}
			
			function findItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				//bno가 3인 게시물 찾기
				const board1 = arr.find((item) => {
					return item.bno === 3;
				});
				
				console.log(board1);
				
				//writer가 홍길남인 게시물 찾기
				const board2 = arr.find((item) => {
					return item.writer === "홍길남";
				});
				
				console.log(board2);
			}
			
			function handleEachItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				//for반복문 도는 법
				//1. 인덱스 이용
				for(var i = 0; i < arr.length; i++) {
					console.log(arr[i]);
				}
				//2. of 이용
				for(var item of arr) {
					console.log(item);
				}
				//3. 배열의 forEach()메소드 이용
				arr.forEach((item) => {
					console.log(item);
				});
			}
			
			function mapItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				//제목으로 구성된 새로운 배열 얻기
				const titles = arr.map((item) => item.title );
				
				
				console.log(titles);
				//게시물 번호로 구성된 새로운 배열 얻기
				const bnos = arr.map( item => item.bno );
				
				console.log(bnos);
				
				//항목에 오늘의 날짜를 '2024.4.2.'를 추가한 새로운 항목 배열을 얻기
				const newArr = arr.map ((item) => {
					var now = new Date();
					var strDate = now.toLocaleDateString();
					return {...item, date: strDate};
				});
				
				console.log(newArr);
			}
			
			function sortItem() {
				const fruits = ["Banana", "Orange", "Apple", "Mango"];
				//올림차순 정렬
				fruits.sort();
				console.log(fruits);
				// 내림차순으로 정렬(sort() 호출한 후에 실행한다.)
				fruits.reverse();
				console.log(fruits);
				
				const arr = [
			          { bno: 2, title: "제목1", writer: "홍길동" },
			          { bno: 3, title: "제목2", writer: "홍길서" },
			          { bno: 5, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 1, title: "제목5", writer: "홍길북" },
			     ];
				//bno 기준으로 올림차순하기
				arr.sort((item1, item2) => {
					return -(item1.bno - item2.bno);
				});
				console.log(arr);
				
				//title 기준으로 내림차순정렬
				arr.sort((item1, item2) => {
					//comparator
					if(item1.writer > item2.writer) {
						return 1;
					} else if(item1.writer === item2.writer) {
						return 0;
					} else {
						return -1;
					}
				});
				console.log(arr);
			}
		</script>
		
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="card">
    		<div class="card-header">Header</div>
    		<div class="card-body">
    			<p><button onclick="basic()" class="btn btn-info btn-sm">기본</button></p>
    			<p><button onclick="appendItem()" class="btn btn-info btn-sm">새 항목 추가</button></p>
    			<p><button onclick="removeAndInsertItem()" class="btn btn-info btn-sm">항목 제거 및 삽입</button></p>
				<p><button onclick="concatArray()" class="btn btn-info btn-sm">배열 합쳐서 새로운 배열 생성</button></p>
				<p><button onclick="filterItem()" class="btn btn-info btn-sm">필터링 후 새로운 배열 생성</button></p>
				<p><button onclick="findItem()" class="btn btn-info btn-sm">항목찾기</button></p>
				<p><button onclick="handleEachItem()" class="btn btn-info btn-sm">항목 일괄 처리</button></p>
				<p><button onclick="mapItem()" class="btn btn-info btn-sm">항목 변환</button></p>
				<p><button onclick="sortItem()" class="btn btn-info btn-sm">항목 정렬</button></p>
				
			</div>
  		</div>
	</body>
</html>