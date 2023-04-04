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
<link rel="import" href="/index.jsp">
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
				<div class="css-171zbec eug5r8l0">
					<div class="css-xa5js9 e17r87fc2">
						<h2 class="css-y83uep e17r87fc1">찜한 상품(0)</h2>
						<span class="css-a3vgo2 e17r87fc0">찜한 상품은 최대 200개까지 저장됩니다.</span>
					</div>
					<div class="css-18fpq69 e1gj5avp1">
						<div class="css-vbw9lg e1gj5avp0">
							<svg width="60" height="60" viewBox="0 0 68 68"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M57.025 14.975c-5.3-5.3-13.889-5.3-19.186 0L34 18.812l-3.837-3.837c-5.3-5.3-13.89-5.3-19.19 0-5.296 5.297-5.296 13.886 0 19.186l3.838 3.837 18.482 18.485a1 1 0 0 0 1.414 0s0 0 0 0l18.482-18.485h0l3.837-3.837c5.3-5.3 5.3-13.89 0-19.186z"
									stroke="#e2e2e2" stroke-width="2" stroke-linecap="round"
									fill="none" fill-rule="evenodd"></path></svg>
						</div>
						<strong class="css-1u1rlh7 et5ara90">찜한 상품이 없습니다.</strong>
						<button class="css-1qwso5m e4nu7ef3" type="button" width="150"
							height="44" radius="3">
							<span class="css-ymwvow e4nu7ef1">베스트 상품 보기</span>
						</button>
					</div>
				</div>
			</div>
			
		</div>


		

	</div>
</body>
</html>