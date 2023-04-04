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
<link href="/css/basketView.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!--  상단부 -->
	<div>
		<div class="css-t79vuj">
			<!-- 로그인 됐을 때, 이름 표시 -->
			<div class="css-fexq9b">
				<div class="css-1qolcqm"
					onmouseover="document.getElementById('myPageList').style.display='block';"
					onmouseout="document.getElementById('myPageList').style.display='none';">
					<a class="css-1pu21l0" href="http://localhost:8080/mypage/orderhistory.jsp">
						<span class="css-1jd0kby">
							<span class="css-ufqs0g">일반</span>
							고대열 님
						</span>
						<span class="css-1lrerrk"></span>
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
						<div class="css-12olpw6">로그아웃</div>
					</div>
				</div>
				<div class="css-1qgm48u"></div>
				<div class="css-1qolcqm"
					onmouseover="document.getElementById('custumCenter').style.display='block';"
					onmouseout="document.getElementById('custumCenter').style.display='none';">
					<a class="css-1pu21l0">고객센터
						<span class="css-1lrerrk"></span>
					</a>
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
						
					<button class="active css-j0ug0x" onclick="location.href='http://localhost:8080/index_login.jsp';">마켓컬리</button>
					
					<button class=" css-1sia941">뷰티컬리</button>
					
				</div>
				<div class="css-pqw0uk">
					<div class="css-w444a2">
						<input id="gnb_search" placeholder="검색어를 입력해주세요" required=""
							class="css-11ntk83" value="">
						<button id="submit" aria-label="submit"
							class="css-ywxmlw"></button>
					</div>
				</div>
				<div class="css-pqw0uk">
					<div class="css-c4pbxv">
						<div class=" css-1n4p7us"></div>
						<button class="css-231fw3" aria-label="찜하기" type="button"></button>
						<div class="css-ff2aah">
							<button class="css-g25h97"></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="header" class="css-19ndp9a">
			<div class="css-mlddcv">
				<div class="css-0">
					<div class="css-axtlq9">
						<span class="css-1k5gn9s"></span><span
							class="css-t75x7c">카테고리</span>
					</div>
				</div>
				<ul class="css-1887xqd">
					<li class="css-59mmhh"><span
						class="css-1xyu7j9">신상품</span></li>
					<li class="css-59mmhh"><span
						class="css-1xyu7j9">베스트</span></li>
					<li class="css-59mmhh"><span
						class="css-1xyu7j9">알뜰쇼핑</span></li>
					<li class="css-59mmhh"><span
						class="css-1xyu7j9">특가/혜택</span></li>
				</ul>
				<div class="css-s5xdrg">
					<a
						href="/shop/event/kurlyEvent.php?htmid=event/delivery_search/delivery_search">
						<div class="css-dnwaeo">
							<span class="css-1s2o3jp">샛별・택배</span> 배송안내
						</div>
					</a>
				</div>
			</div>
		</div>
		<div hidden="" class="css-1px7x3s"></div>
	</div>
	<!--  중단부 -->

	<div class="css-1pz4b76 er0tf675">
		<h2 class="css-1n2hipb er0tf674">장바구니</h2>
		<div></div>
		<div class="css-a6t9xs er0tf673">
			<div class="css-8wfj4z er0tf672">
				<div class="css-20o6z0 e149z643">
					<div class="css-zbxehx e149z642">
						<label class="css-1vf8o8s e1dcessg3" disabled=""><input
							disabled="" type="checkbox" class="css-agvwxo e1dcessg2">
						<div class="css-79hxr7 e1dcessg1">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
										stroke="#ddd" fill="#f2f2f2"></path>
									<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
										stroke-width="1.5" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
							</div>
							<span>전체선택 (0/0)</span></label><span class="css-454d5e e149z641"></span>
						<button disabled="" class="css-0 e149z640">선택삭제</button>
					</div>
				</div>
				<div class="css-2lvxh7 ej77nku0">
					<p class="css-l1lu2l eqymnpn0">장바구니에 담긴 상품이 없습니다</p>
				</div>
				<div class="css-20o6z0 e149z643">
					<div class="css-zbxehx e149z642">
						<label class="css-1vf8o8s e1dcessg3" disabled=""><input
							disabled="" type="checkbox" class="css-agvwxo e1dcessg2">
						<div class="css-79hxr7 e1dcessg1">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
										stroke="#ddd" fill="#f2f2f2"></path>
									<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
										stroke-width="1.5" stroke-linecap="round"
										stroke-linejoin="round"></path></svg>
							</div>
							<span>전체선택 (0/0)</span></label><span class="css-454d5e e149z641"></span>
						<button disabled="" class="css-0 e149z640">선택삭제</button>
					</div>
				</div>
			</div>
			<div class="css-1dta0ch er0tf671">
				<div class="css-snlo96 er0tf670">
					<div class="css-oft680 e15fcx0p3">
						<h3 class="css-1guaarh e15fcx0p2">배송지</h3>
						<div class="css-50yi3o e15fcx0p1">
							<p class="css-xxfxl7 e1tweaw10">경기 용인시 수지구 풍덕천동 401-1 (삼성쉐르빌)
								201동 402호</p>
							<div class="css-s6py67">
								<span type="direct" class="css-z4mca9 e1jlkvf51">샛별배송</span>
							</div>
							<button class="css-122i3z7 e4nu7ef3" type="button" height="36"
								radius="3">
								<span class="css-ymwvow e4nu7ef1">배송지 변경</span>
							</button>
						</div>
					</div>
					<div class="css-1t6so8j em21elb0">
						<div class="css-8jmoub ea1mry77">
							<span class="css-vmo0an ea1mry76">상품금액</span><span
								class="css-iinokh ea1mry74">0<span
								class="css-hfgifi ea1mry72">원</span></span>
						</div>
						<div class="css-t4mc5m ea1mry77">
							<span class="css-vmo0an ea1mry76">상품할인금액</span><span
								class="css-iinokh ea1mry74">0<span
								class="css-hfgifi ea1mry72">원</span></span>
						</div>
						<div class="css-t4mc5m ea1mry77">
							<span class="css-vmo0an ea1mry76">배송비</span><span
								class="css-iinokh ea1mry74">0<span
								class="css-hfgifi ea1mry72">원</span></span>
						</div>
						<div class="css-7ygxxm eepcpbj4">
							<span class="css-vmo0an eepcpbj3">결제예정금액</span><span
								class="css-da7gr8 eepcpbj2"><strong
								class="css-xmbce4 eepcpbj0">0</strong><span
								class="css-aro4zf eepcpbj1">원</span></span>
						</div>
					</div>
					<div class="css-8qz8ia e1mybczi1">
						<button class="css-fwelhw e4nu7ef3" type="button" disabled=""
							height="56" radius="3">
							<span class="css-ymwvow e4nu7ef1">상품을 담아주세요</span>
						</button>
						<ul class="css-19kxq7d">
							<li class="css-7s0nna ejr204i0">쿠폰/적립금은 주문서에서 사용 가능합니다</li>
							<li class="css-7s0nna ejr204i0">[주문완료] 상태일 경우에만 주문 취소 가능합니다.</li>
							<li class="css-7s0nna ejr204i0">[마이컬리 &gt; 주문내역 상세페이지] 에서 직접
								취소하실 수 있습니다.</li>
							<li class="css-7s0nna ejr204i0">쿠폰, 적립금 사용 금액을 제외한 실 결제 금액
								기준으로 최종 산정됩니다.</li>
							<li class="css-7s0nna ejr204i0">상품별로 적립금 지급 기준이 다를 수 있습니다.
								(상품 상세 페이지에서 확인 가능합니다)</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>