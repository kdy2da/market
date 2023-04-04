<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<link href="${pageContext.request.contextPath }/css/tag.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/headView.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/loginView.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/mypageView.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath }/css/searchView.css" rel="stylesheet"/>
	<meta charset="UTF-8">
	<title>ssss</title>
</head>
<body>

	<!-- 	상단부 -->
	<div>
		<div class="css-t79vuj">
			<div class="css-fexq9b">
				<c:choose>
					<c:when test="${sessionScope.user == null}">
						<a class="css-1g7d8zf">회원가입</a>
						<div class="css-1qgm48u"></div>
						<a class="css-1pu21l0"
							href="http://localhost:8080/login/loginView.jsp">로그인</a>
					</c:when>
					<c:otherwise>
						<div class="css-1qolcqm"
							onmouseover="document.getElementById('myPageList').style.display='block';"
							onmouseout="document.getElementById('myPageList').style.display='none';">
							<a class="css-1pu21l0"
								href="http://localhost:8080/mypage/orderhistory.jsp"> <span
								class="css-1jd0kby"> <span class="css-ufqs0g">일반</span>
									${sessionScope.user.username }
							</span> <span class="css-1lrerrk"></span>
							</a>
							<div class="menu css-1ia5eje" id="myPageList">
								<div class="css-12olpw6">주문 내역</div>
								<div class="css-12olpw6">선물 내역</div>
								<div class="css-12olpw6">찜한 상품</div>
								<div class="css-12olpw6">배송지 관리</div>
								<div class="css-12olpw6">상품 후기</div>
								<div class="css-12olpw6">상품 문의</div>
								<div class="css-12olpw6">적립금</div>
								<div class="css-12olpw6">쿠폰</div>
								<div class="css-12olpw6">개인 정보 수정</div>
								<div class="css-12olpw6">나의 컬리 스타일</div>
								<div class="css-12olpw6"
									onclick="location.href='${pageContext.request.contextPath }/market/MarketLogout.lo'">로그아웃</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				<div class="css-1qgm48u"></div>
				<div class="css-1qolcqm"
					onmouseover="document.getElementById('custumCenter').style.display='block';"
					onmouseout="document.getElementById('custumCenter').style.display='none';">
					<a class="css-1pu21l0">고객센터<span class="css-1lrerrk"></span></a>
					<div class="menu css-1ia5eje" id="custumCenter">
						<div class="css-12olpw6">공지사항</div>
						<div class="css-12olpw6">자주하는 질문</div>
						<div class="css-12olpw6">1:1 문의</div>
						<div class="css-12olpw6">대량주문 문의</div>
					</div>
				</div>
			</div>
			<div class="css-r7wmjj">
				<div class="css-boc80u">
					<img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iODIiIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA4MiA0MiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGwtcnVsZT0ibm9uemVybyIgZmlsbD0ibm9uZSI+CiAgICAgICAgPHBhdGggZD0iTTAgMGg4MnY0MkgweiIvPgogICAgICAgIDxwYXRoIGQ9Ik02Mi41Ljk2NWMxLjAyNi0uNTU3IDIuNDY2LS43MTggMy4zNTYuMTA3Ljg5LjgyNS42NzYgMi4wNDggMCAzLjk3MyAwIDAtMS41MDUgNC4wNjYtMy4wNTUgOC4yNjJsLS4zOTggMS4wOGMtMS40MTQgMy44My0yLjc2MiA3LjQ4Ny0yLjkyNyA3Ljk2My0xLjQ5OCA0LjI0NSAxLjk2NyA0LjEyMiA0LjAyNC0uMTUyIDEuMTU5LTIuMzk0IDIuNjQ0LTYuMzU3IDIuNjQ0LTYuMzU3LjUyNC0xLjU2My42ODItMi41MDQuMzU5LTIuODI4LS4xMDctLjExMy4wNDUtLjI1Mi4xOC0uMzIzIDIuMjY5LTEuMTQ5IDQuNjMtLjA3MiAzLjMzNiAzLjMxbC0uMDU0LjEzOGMtLjM4Ny45NzgtMi42OCA2LjczMy0yLjY4IDYuNzMzLS42NzYgMS42Ni0uNTk1IDMuMjM2LjQxOCAzLjIzNi42ODYtLjAwNCAxLjQ2LS4zODUgMi4zMDQtMS4wODggMS44MTgtMS41MDQgMy4yMjItNC4zMTIgMy43MjctNS40NTQuMjMtLjUwOCAxLjA4Ny0yLjQyIDEuNzY2LTQuMzYxLjIzNi0uNjY1LjM2OS0xLjM2LjM5NS0yLjA2NWEuNDQzLjQ0MyAwIDAgMSAuMTk0LS40NTkgMy41NzggMy41NzggMCAwIDEgMS42Ny0uNDIgMS44MDUgMS44MDUgMCAwIDEgMS40NjUuNzA1Yy40NDMuNTk4LjU2NiAxLjU3OS4xMDMgMi44MDgtLjEyLjMyLTMuNzc1IDkuOTU4LTMuNzc1IDkuOTU4di4wMjZjMi4wNDEtMS4yMjMgMy44Ny0xLjMxMyA0Ljk1My0uODU0bC0uMDAzLS4wMTNjMS40OTUuNjQ3IDEuOTkgMi40NC45MzggMy41NTktLjEwMy4xMS0uMzYyLjA4NC0uMzYyLS4wOS0uMDk0LTEuMjUzLTIuNTE3LTMuNDk1LTYuMTA5LTEuMDc1bC0uMTQ1LjM4NS0xLjA2OCAyLjgwOGMtMi42MiA3LjAxOC01LjQwMyAxMi4xMzYtOS40MTUgMTEtMi42ODgtLjc2LTIuMzc3LTQuNjA3LjUxNS03Ljc5YTU0LjkgNTQuOSAwIDAgMSA2LjQ5LTUuODk4Yy4wNjgtLjE4OC4xMy0uMzUuMTg4LS41MTEuMjc4LS43OC40OTEtMS40MzQuNzkyLTIuMjY1bC4xNTktLjUxOGMtLjE3OC4yLS40OTguNTczLS43MTIuODEyLS43MTIuOC0yLjQ5NCAyLjc1Ny01LjMyOSAyLjIwN2wtLjIzNC0uMDUyYy0yLjA1LS41MDgtMi42MDgtMS45ODYtMi42NTUtMy4yNzctMi4xNDIgMi42NTYtNC4zNTEgMy40MjYtNS44MDcgMy4zOS0xLjk0OC0uMDQ4LTMuMzc4LTEuNTE0LTIuNDI3LTQuMjkgMS4wNTgtMy4xMDYgNS41LTE1LjMzMiA2Ljc5NS0xOSAuNDg1LTEuNTguNjY2LTIuNTguMTg0LTIuOTc0LS4xMjMtLjEwMy4wNTItLjI2NS4yLS4zNDZ6bTguMzY0IDI4Ljc3OGMtMS4xMDMuODgtNS41MjYgNC41My02Ljc1MiA3LjQ0MS0uNTA1IDEuMTk3LS4zNzYgMi4xNDkuNDg4IDIuMjMzIDEuOTYuMTk0IDQuMDEyLTMuODE4IDYuMjI4LTkuNTEyek0xNi4wMjggNS4zNTJjLS4wODcuMzMyLTEuMzE5IDMuODYtMi43MDEgNy43NDlsLS4yMDkuNTg2LS4yMS41ODktLjIxNS42MDRjNC42OTEtMS4xMjMgMTMuMDY0LTYuNTcgMTQuMDM1LTEwLjA4NS4xMi0uMTYxLjI5LS4yMi41NjYtLjAzNS40OTUuMzMuNjg2IDEuMTU1LjQ5NSAxLjkxOC0uNzY0IDMuMDM4LTYuNDE2IDcuMzQxLTExLjM3OSA5LjU1NC42MTIgMS42MzcgMi42ODIgNi4yNjcgNC4yMDYgOS4xMTEgMS42NjMgMy4xMTkgMy40MiA0LjU3NSA2LjE0NyA0LjczNyAxLjQ2LjA4NSAzLjAxNC0uNDQ3IDMuODkzLTEuMjJsLjE0OC0uMTQtLjAxMy4wM2MuMTk0LS4yMDQuNTExLjA3Ny4zNjYuMzIzYTYuNSA2LjUgMCAwIDEtNC45OTIgMi44NjdjLTYuMzQ1LjQyNy04Ljc3NC0zLjg3LTEzLjMwNC0xNC40OTQtLjM2Ni4xMjYtLjgwOS4yODgtMS4yNTUuNDUtLjA3NS4xODctMi4wNyA1LjY0Mi0yLjEzIDUuODIzLS45NDQgMi44Ny0xLjAwNSA0LjQ0Mi0uMzU4IDQuODk1LjE0NS4wOS4wNzQuMzMzLS4xNzguNDE0LTIuNTI3Ljc5Ni00Ljg1My0uNjk2LTMuNTU5LTQuNDQyIDEuMTYxLTMuMzE2IDUuNjktMTYuMTggNi45MTQtMTkuNjI2LjQyNy0xLjI5NC4xOTctMi4xMjUtLjQ5Mi0yLjMwNkM4LjUwNiAxLjc4Ljg3NyA4Ljc0OSAxLjk3MSAxNS4xODRjLjE5IDEuMTIuOTggMS43NDcgMS4zNzggMS42NjNhLjEzMy4xMzMgMCAwIDEgLjE1Ni4xNTkgMS41MDggMS41MDggMCAwIDEtMS44NDUgMS4wMzJDLjQ5IDE3Ljc4Mi4xMDcgMTYuNTI3LjA0MyAxNS44OC0uNjAxIDkuMjIgNi4xNDggMS4yMyAxMi4zODkuNThjMi4zNzgtLjI1IDQuNjEuOTYgMy42NCA0Ljc3MnptMjQuMDQgOS45MTMtLjA2LjIwNy0yLjgzIDguMTZjLS4zMDQuODUtLjEgMS43MzcuNTAxIDEuOTAyIDEuNzU3LjQ4MiA0LjAyOC0yLjE0NSA1LjEzMS00LjczM2E2Ny43OTQgNjcuNzk0IDAgMCAwIDEuNDc2LTMuODE1Yy41ODItMS42NDMgMS4xMDYtMy4xODMuNzgzLTMuOTA4LS4wNzUtLjE2OC4wNDUtLjI1Ni4yMjMtLjM1LjUwNS0uMjU1IDIuMjI2LS44MjUgMy4xNDEuMDY4LjY5NS42NzQuNjA5IDEuNzcxLS4wMyAzLjQzN2wtLjA5Ni4yNDIuMjItLjI3M2MyLjcwMy0zLjMgNC43OTItNC4yOTIgNi41NjMtMy41OTdsLjE0Ny4wNjJjMi4zODEgMS4wNzQgMS4xNDYgNS4yMTUtMi4xMTYgNS40OC0uMi4wMTctLjM1Ni0uMTI2LS4xNTgtLjQwNy4zOTUtLjYwNS4zNTYtMS45MDktLjc5Ni0yLjAyMi0xLjE1Mi0uMTEzLTIuODMgMS4yMDctNC4wMzggMi44NDQtMS4wODQgMS40NS0yLjIgMy45MTEtMy4zMjIgNy4yNzMtLjI3Mi44MTgtLjE0MyAxLjAxMi0uMTEgMS4wNjdhLjEuMSAwIDAgMSAwIC4wOTRjLS4xNDMuMjcyLS45NjUuNTk2LTEuNzYuNTk2LTEuNjI1LS4wMDctMi4yOTEtLjk0NS0xLjk2Ny0yLjQzNy0xLjg0OCAxLjc2NC0zLjcxMSAyLjYxNC01LjM1NSAyLjQ2NmEyLjUyNCAyLjUyNCAwIDAgMS0yLjIzNi0zLjEwM2MtMS40MjYgMS44MDktMy41NDIgMy4yNjgtNS42OTcgMy4wNjctMi4xNTUtLjItMy41LTEuNjY2LTIuODAyLTQuNzg4LjU5LTIuNTk4IDEuNTkyLTUuMjkgMi4yMDctNy4wMjcuNTE0LTEuNDU2LjYxOC0yLjQwNy4yOTQtMi43NS0uMTAzLS4xMTQuMDU1LS4yNS4xOTQtLjMyNCAxLjY5LS44ODYgNC4zOTQtLjMxNCAzLjYzIDIuMDktLjgwMiAyLjUyNy0yLjI1NSA2LjQ5LTIuNTUgNy40LS43MzcgMi4yODctLjI5IDMuNTIzLjc1NSAzLjU4IDEuMDQ1LjA2IDIuNDMtLjk2IDMuNDItMi41MDMgMS43Ni0yLjUyNCAyLjU4MS01LjY4NSAzLjM3Ny03Ljg4Mi4yMDQtLjU2LjUyNy0xLjg2Ni4xODUtMi4zNTItLjA5MS0uMTIzLjA2Ny0uMjU4LjI3NS0uMzcyIDEuNTM3LS44NDkgNC4yODUtLjY0IDMuNDAyIDIuNjA4eiIgZmlsbD0iIzVGMDA4MCIvPgogICAgPC9nPgo8L3N2Zz4K"
						alt="마켓컬리 로고" class="css-17mnrrx">

					<button class="active css-j0ug0x"
						onclick="location.href='http://localhost:8080/';">마켓컬리</button>

					<button class=" css-1sia941">뷰티컬리</button>

				</div>
				<div class="css-pqw0uk">
					<div class="css-w444a2">
						<input id="gnb_search" placeholder="검색어를 입력해주세요" required="" class="css-11ntk83" value="">
						<button id="submit" aria-label="submit" class="css-ywxmlw"></button>
					</div>
				</div>
				<div class="css-pqw0uk">
					<div class="css-c4pbxv">
						<c:choose>
							<c:when test="${sessionScope.user != null }">
								<div class=" css-1n4p7us"
									onmouseover="document.getElementById('mui-3').style.display='block';"
									onmouseout="document.getElementById('mui-3').style.display='none';"></div>
							</c:when>
							<c:otherwise>
								<div class=" css-1n4p7us"
									onmouseover="document.getElementById('mui-1').style.display='block';"
									onmouseout="document.getElementById('mui-1').style.display='none';"></div>
							</c:otherwise>
						</c:choose>
						<div role="tooltip" id="mui-3"
							class="e1n3mt0d0 MuiTooltip-popper MuiTooltip-popperInteractive css-41wedd"
							style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(18px, 36px); display: none;"
							data-popper-placement="bottom">
							<div
								class="MuiTooltip-tooltip MuiTooltip-tooltipPlacementBottom css-1spb1s5"
								style="opacity: 1; transition: opacity 1ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;">
								<div class="css-ej44pb e19jgrln4"
									onmouseover="document.getElementById('mui-3').style.display='block';"
									onmouseout="document.getElementById('mui-3').style.display='none';">
									<p class="css-zvjjit e19jgrln3">${sessionScope.user.useraddress }</p>
									<div class="css-7617kc e19jgrln1">
										<button class="css-oyz24n" type="button" height="36" radius="3">
											<span class="css-ymwvow">배송지 변경</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div role="tooltip" id="mui-1"
							class="e1n3mt0d0 MuiTooltip-popper MuiTooltip-popperInteractive css-41wedd"
							style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(18px, 36px); display: none;"
							data-popper-placement="bottom">
							<div
								class="MuiTooltip-tooltip MuiTooltip-tooltipPlacementBottom css-1spb1s5"
								style="opacity: 1; transition: opacity 1ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;">
								<div class="css-ej44pb e19jgrln4"
									onmouseover="document.getElementById('mui-1').style.display='block';"
									onmouseout="document.getElementById('mui-1').style.display='none';">
									<p class="css-zvjjit e19jgrln3">
										<strong class="css-1b2mq3h e19jgrln2">배송지를 등록</strong>하고<br>
										<span class="css-1bmnxg7 e19jgrln0">구매 가능한 상품을 확인하세요!</span>
									</p>
									<div class="css-7617kc e19jgrln1">
										<button class="css-113ydsk e4nu7ef3" type="button" width="80"
											height="36" radius="3"
											onclick="location.href='http://localhost:8080/login/loginView.jsp'">
											<span class="css-ymwvow e4nu7ef1">로그인</span>
										</button>
										<button class="css-1i20qd6 e4nu7ef3" type="button" height="36"
											radius="3">
											<span class="css-ymwvow e4nu7ef1"><img
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAoCAQAAAAiAqDbAAAAAXNSR0IArs4c6QAAAYdJREFUeNrt1j9Lw0AYBvDGqlBF7VAQRUFBoeDmIoL4b9Cp4CJO1g9QrHQVCnbo7mdwLNJvUJy6KSIFxaloQQpSaxqT3D1FHodWrTYZctUtT7Yc97sX7u5NAgE/fvw4h5o+J2IiYceNtecRaj2DuaC9DxP8fkShPtMTWQ7jthP8go+U662NQgdBlMxFDlKj1oiIZIu1s0osNZRAUKR+TjcncAOCYksBNXdAUB53j1RCMEDUL/q911kFcX/S5zRqrIKg2PaIvo2DoLHptqR8AGXeI2otgeDLmNu4nQFhetwsEQNBDriiByDoETXWQfBpyHXRlAKqz4OgseCKFkBce76eaILyzLmWRgQERcLzObWzIGgtO+59EUSzEvKMVofRBKHXprvINAiKQ6W731hpt49kLvgJmpO4ar+NKbaU1sEC8S7P7Yw4xV1nrzI2FNnXWVz+anymHZfRVo9VZqnJqEzLIuryUeatvdaFqE31yLp02zYro//AitQffxLLYWuXg/6vgR8/HfkA7NFWMofTE4wAAAAASUVORK5CYII="
												alt="" class="css-q6apuw">주소 검색</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<button class="css-231fw3" aria-label="찜하기" type="button"></button>
						<div class="css-ff2aah">
							<button class="css-g25h97"
								onclick="location.href='http://localhost:8080/basket/basketView_default.jsp'"></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="header" class="css-19ndp9a">
			<div class="css-mlddcv">
				<div class="css-0">
					<div class="css-axtlq9">
						<span class="css-1k5gn9s"></span><span class="css-t75x7c">카테고리</span>
					</div>
				</div>
				<ul class="css-1887xqd">
					<li class="css-59mmhh"><span class="css-1xyu7j9">신상품</span></li>
					<li class="css-59mmhh"><span class="css-1xyu7j9">베스트</span></li>
					<li class="css-59mmhh"><span class="css-1xyu7j9">알뜰쇼핑</span></li>
					<li class="css-59mmhh"><span class="css-1xyu7j9">특가/혜택</span></li>
				</ul>
				<div class="css-s5xdrg">
					<a href="/shop/event/kurlyEvent.php?htmid=event/delivery_search/delivery_search">
						<div class="css-dnwaeo">
							<span class="css-1s2o3jp">샛별・택배</span> 배송안내
						</div>
					</a>
				</div>
			</div>
		</div>
		<div hidden="" class="css-1px7x3s"></div>
	</div>

</body>
</html>