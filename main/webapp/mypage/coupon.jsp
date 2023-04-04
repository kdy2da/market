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
				<div class="css-171zbec eug5r8l0">
					<div class="css-j0lifa ed9qr673">
						<div class="css-fhxb3m ed9qr672">
							<h2 class="css-1268zpe ed9qr671">쿠폰</h2>
						</div>
					</div>
					<div class="css-1l6d6kz e1rh3gjt3">
						<div class="css-zjik7 e1rh3gjt2">
							<div class="css-1gddiza e1uzxhvi6">
								<div class="css-176lya2 e1uzxhvi3">
									<input data-testid="input-box" placeholder="발급된 쿠폰번호를 입력해 주세요"
										type="text" class="css-u52dqk e1uzxhvi2" value="">
								</div>
							</div>
							<button class="css-nrfvjw e1rh3gjt0">쿠폰 등록</button>
						</div>
						<p class="css-b0usrz e1rh3gjt1">쿠폰에 하이픈 '-'이 포함되어 있을 경우, 하이픈
							'-'을 반드시 입력해주세요.</p>
					</div>
					<div data-testid="summary" class="css-1ky9cuc e3geg1y2">
						<p class="css-16z9rvt e3geg1y1">쿠폰은 적용 가능한 상품이 따로 적용되어 있는 경우
							해당 상품 구매 시에만 사용이 가능합니다.</p>
						<p class="css-1x6sdw1 e3geg1y0">사용가능쿠폰: 0장</p>
					</div>
					<table class="css-171zbec e1rqxz0z3">
						<thead class="css-0 e1rqxz0z2">
							<tr class="css-141m64i e1rqxz0z1">
								<th class="css-1ug13y3 e1rqxz0z0">쿠폰명</th>
								<th class="css-1ug13y3 e1rqxz0z0">기능</th>
								<th class="css-1ug13y3 e1rqxz0z0">할인/적립</th>
								<th class="css-1ug13y3 e1rqxz0z0">사용가능기간</th>
								<th class="css-1ug13y3 e1rqxz0z0">사용여부</th>
							</tr>
						</thead>
						<tbody data-testid="coupon-detail" class="css-1deckd1 e1rjzgz00">
							<tr class="css-141m64i e67ono81">
								<td colspan="5" class="css-xw9sec e67ono80">쿠폰 내역이 존재하지
									않습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
		</div>


		

	</div>
</body>
</html>