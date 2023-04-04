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

<!-- 중단부 -->
	<div class="css-140915z">
		<div class="css-7500ra">아이디 찾기</div>
		<div class="css-u3y03b">
			<div class="css-1izr46f">
				<button type="button" class="css-j8h1l4" id="phone"
					onclick="x()">휴대폰 인증</button>
				<button type="button" class="css-1vhrqx7" id="email"
					onclick="y()">이메일 인증</button>
			</div>
			
			<!-- visible : true -->
			<form class="css-s3iz85" id="phoneCert">
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="name" class="css-c3g9of">이름</label>
						<div class="css-176lya2">
							<input data-testid="input-box" id="name" name="name"
								placeholder="이름을 입력해 주세요" type="text"
								class="css-1bkd15f" value="">
						</div>
					</div>
				</div>
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="phone" class="css-c3g9of">휴대폰 번호</label>
						<div height="46" class="css-1iilz1t">
							<input data-testid="input-box" id="phone" name="phone"
								placeholder="휴대폰 번호를 입력해 주세요" type="tel" height="46"
								class="css-189shdi" value="">
						</div>
					</div>
				</div>
				<div class="css-3vxi16">
					<button class="css-1s9rhb5" type="submit" disabled=""
						radius="4">
						<span class="css-ymwvow">인증번호 받기</span>
					</button>
				</div>
			</form>
			
			<!-- visible : false -->
			<form class="css-s3iz85" style="display:none;" id="emailCert" >
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="name" class="css-c3g9of">이름</label>
						<div class="css-176lya2">
							<input data-testid="input-box" id="name" name="name"
								placeholder="이름을 입력해 주세요" type="text"
								class="css-1bkd15f" value="">
						</div>
					</div>
				</div>
				<div class="css-1blp8ou">
					<div class="css-1yjqrpx">
						<label for="email" class="css-c3g9of">이메일</label>
						<div class="css-176lya2">
							<input data-testid="input-box" id="email" name="email"
								placeholder="이메일을 입력해 주세요" type="email"
								class="css-1bkd15f" value="">
						</div>
					</div>
				</div>
				<div class="css-3vxi16 e1h5g480">
					<button class="css-1s9rhb5" type="submit" disabled=""
						radius="4">
						<span class="css-ymwvow">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
<script>
function x() {
	document.getElementById("phone").classList.remove("css-1vhrqx7");
	document.getElementById("phone").classList.add("css-j8h1l4");
	document.getElementById("email").classList.remove("css-j8h1l4");
	document.getElementById("email").classList.add("css-1vhrqx7");
	document.getElementById("phoneCert").setAttribute("style","display:block");
	document.getElementById("emailCert").setAttribute("style","display:none");
};
function y() {
	document.getElementById("email").classList.remove("css-1vhrqx7");
	document.getElementById("email").classList.add("css-j8h1l4");
	document.getElementById("phone").classList.remove("css-j8h1l4");
	document.getElementById("phone").classList.add("css-1vhrqx7");
	document.getElementById("phoneCert").setAttribute("style","display:none");
	document.getElementById("emailCert").setAttribute("style","display:block");
}
</script>
</html>