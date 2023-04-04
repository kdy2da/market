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

	<!-- 	로그인 화면 -->
	<div class="css-1bb6q2p">
		<div class="css-a7gihu">
			로그인
			<div class="css-1axolzg">
				
				<!-- 로그인 버튼 눌렀을 때 -->
				<form action="${pageContext.request.contextPath }/market/MarketLogin.lo" method="post">
					<div class="css-46b038">
						<div class="css-1accgqb">
							<div class="css-176lya2">
								<input data-testid="input-box" name="id"
									placeholder="아이디를 입력해주세요" type="text" class="css-1bkd15f"
									value="">
							</div>
						</div>
						<div class="css-1accgqb">
							<div class="css-176lya2">
								<input data-testid="input-box" name="password"
									placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off"
									class="css-1bkd15f" value="">
							</div>
						</div>
					</div>
					<div class="css-1vjdduq">
						<a class="css-i4t6me" href="http://localhost:8080/login/idSearchView.jsp">아이디 찾기</a> <span class="css-1cgn39v"></span>
						<a class="css-i4t6me" href="http://localhost:8080/login/pwdSearchView.jsp">비밀번호 찾기</a>
					</div>
					<div class="css-s4i9n2">
						<button class="css-qaxuc4" type="submit" height="54" radius="3">
							<span class="css-ymwvow">로그인</span>
						</button>
						<button class="css-hxorrg" type="button" height="54" radius="3">
							<span class="css-ymwvow">회원가입</span>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
<script>
	
</script>
</html>