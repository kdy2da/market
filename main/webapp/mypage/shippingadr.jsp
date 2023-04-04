<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/css/tag.css" rel="stylesheet" type="text/css" />
<link href="/css/headView.css" rel="stylesheet" type="text/css" />
<link href="/css/loginView.css" rel="stylesheet" type="text/css" />
<link href="/css/mypageView.css" rel="stylesheet" type="text/css" />
<link href="/css/searchView.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!-- 상단부 -->
	<jsp:include page="/index.jsp" flush="false" />
	
	
	

	<div class="z">
	
		<!-- 중상단부 -->
		
		<div class="a">
		</div>
		
		
		<!-- 중하단부 -->
		<div class="b">
			<div class="b1">
				<jsp:include page="/mypage/mypageIndex.jsp" flush="false" />
			</div>
			
			<!-- 마이페이지 메뉴별 div 설정 -->
			<div>
			
			</div>
			
		</div>


		

	</div>
</body>
</html>