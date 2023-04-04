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
			<div class="css-171zbec eug5r8l0">
				<div class="css-j0lifa ed9qr673">
					<div class="css-fhxb3m ed9qr672">
						<h2 class="css-1268zpe ed9qr671">주문 내역</h2>
						<span class="css-a3vgo2 ed9qr670">최대 지난 3년간의 주문 내역까지 확인할 수
							있어요</span>
					</div>
					<div class="css-fhxb3m ed9qr672">
						<div class="css-wkgeho e1ykq6gv2">
							<div>
								<div class="MuiFormControl-root css-tzsjye">
									<div variant="outlined"
										class="MuiOutlinedInput-root MuiInputBase-root MuiInputBase-colorPrimary MuiInputBase-formControl jss3 css-eg1co4">
										<div tabindex="0" role="button" aria-expanded="false"
											aria-haspopup="listbox" aria-label="Without label"
											class="MuiSelect-select MuiSelect-outlined MuiOutlinedInput-input MuiInputBase-input css-qiwgdb">
											3개월</div>
										<input aria-hidden="true" tabindex="-1"
											class="MuiSelect-nativeInput css-1k3x8v3" value="3">
										<svg
											class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined css-1636szt"
											focusable="false" aria-hidden="true" viewBox="0 0 24 24"
											data-testid="ArrowDropDownIcon">
										<path d="M7 10l5 5 5-5z"></path></svg>
										<fieldset aria-hidden="true"
											class="MuiOutlinedInput-notchedOutline css-igs3ac">
											<legend class="css-nnbavb">
												<span class="notranslate">​</span>
											</legend>
										</fieldset>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="css-1dmsa3j e1jm6dy15"></div>
				<div class="css-1c8nox e1ykq6gv1">
					<div data-testid="warning-orders" class="css-79rsko e1ykq6gv0">
						<div class="css-zigog8 e1bmghrs3">
							<p class="css-1w78rrf e1bmghrs1">3개월간의 주문내역이 없습니다.</p>
							<button class="e1bmghrs0 css-1roqgte e4nu7ef3" type="button"
								width="150" height="44" radius="3">
								<span class="css-ymwvow e4nu7ef1">베스트 상품 보기</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>


		

	</div>
</body>
</html>