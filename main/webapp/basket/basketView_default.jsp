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
	<!-- 상단부 -->
	<jsp:include page="/index.jsp" flush="false" />
	
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
							<p class="css-xxfxl7 e1tweaw10"> ${sessionScope.user.useraddress }</p>
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