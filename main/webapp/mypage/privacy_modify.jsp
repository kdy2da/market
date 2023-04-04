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
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script> -->
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!-- 상단부 -->
	<jsp:include page="/index.jsp" flush="false" />



	<div class="z">

		<!-- 중상단부 -->

		<div class="a"></div>


		<!-- 중하단부 -->
		<div class="b">
			<div class="b1">
				<jsp:include page="/mypage/mypageIndex.jsp" flush="false" />
			</div>

			<!-- 마이페이지 메뉴별 div 설정 -->
			<div class="css-171zbec eug5r8l0">
				<div class="css-j0lifa ed9qr673">
					<div class="css-fhxb3m ed9qr672">
						<h2 class="css-1268zpe ed9qr671">개인 정보 수정</h2>
					</div>
				</div>
				<div class="css-ya8of1 e1w140tr0">
					<form action="#">
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="userId" class="css-1obgjqh e744wfw4">아이디</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="userId" name="userId"
											type="text" readonly="" class="css-u52dqk e1uzxhvi2"
											value="${sessionScope.user.userid }">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="originalPassword" class="css-1obgjqh e744wfw4">현재
									비밀번호</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="originalPassword"
											name="originalPassword" placeholder="비밀번호를 입력해 주세요"
											type="password" autocomplete="off"
											class="css-u52dqk e1uzxhvi2" value=""
											onblur="handleBlur('${sessionScope.user.userpw }')">
									</div>
									<div class="css-shoa2s e1g8vpbl0" style="display: none;"
										id="idCheck">
										<p class="css-1ozil7i e1revjhv0">현재 비밀번호를 확인해주세요</p>
									</div>
								</div>

							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="newPassword" class="css-1obgjqh e744wfw4">새
									비밀번호</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="newPassword"
											name="newPassword" placeholder="새 비밀번호를 입력해 주세요"
											type="password" autocomplete="off"
											class="css-u52dqk e1uzxhvi2" value="">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="newPasswordConfirm" class="css-1obgjqh e744wfw4">새
									비밀번호 확인</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="newPasswordConfirm"
											name="newPasswordConfirm" placeholder="새 비밀번호를 다시 입력해 주세요"
											type="password" autocomplete="off"
											class="css-u52dqk e1uzxhvi2" value="">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="name" class="css-1obgjqh e744wfw4">이름</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="name" name="name"
											placeholder="이름을 입력해 주세요" type="text"
											class="css-u52dqk e1uzxhvi2"
											value="${sessionScope.user.username }">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="email" class="css-1obgjqh e744wfw4">이메일</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="email" name="email"
											placeholder="이메일을 입력해 주세요" type="text"
											class="css-u52dqk e1uzxhvi2"
											value="${sessionScope.user.useremail }">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2">
								<button class="css-ufulao e4nu7ef3" type="button" disabled="">
									<span class="css-ymwvow e4nu7ef1">중복확인</span>
								</button>
							</div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="mobileNumber" class="css-1obgjqh e744wfw4">휴대폰</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1waqr6j e1uzxhvi6">
									<div class="css-176lya2 e1uzxhvi3">
										<input data-testid="input-box" id="mobileNumber"
											name="mobileNumber" placeholder="숫자만 입력해 주세요" type="text"
											readonly="" class="css-u52dqk e1uzxhvi2"
											value="${sessionScope.user.userphone }">
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2">
								<button class="css-ufulao e4nu7ef3" type="button">
									<span class="css-ymwvow e4nu7ef1">다른번호 인증</span>
								</button>
							</div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label class="css-1obgjqh e744wfw4">성별</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-14wodj6 e1ql5c2c0">
									<label class="css-z9g6s0 et8nqc33" for="gender-man"><input
										data-testid="radio-MALE" id="gender-man" name="gender"
										type="radio" class="css-1pes2r6 et8nqc32" value="MALE"><span
										class="css-198i9ca e2sqze61"><div
												class="css-1dahn5m e2sqze60"></div></span><span
										aria-labelledby="gender-man" class="css-mgd87h et8nqc31">남자</span></label><label
										class="css-z9g6s0 et8nqc33" for="gender-woman"><input
										data-testid="radio-FEMALE" id="gender-woman" name="gender"
										type="radio" class="css-1pes2r6 et8nqc32" value="FEMALE"><span
										class="css-198i9ca e2sqze61"><div
												class="css-1dahn5m e2sqze60"></div></span><span
										aria-labelledby="gender-woman" class="css-mgd87h et8nqc31">여자</span></label><label
										class="css-z9g6s0 et8nqc33" for="gender-none"><input
										data-testid="radio-NONE" id="gender-none" name="gender"
										type="radio" class="css-1pes2r6 et8nqc32" value="NONE"
										checked=""><span class="css-5xw1m2 e2sqze61"><div
												class="css-1vic0rk e2sqze60"></div></span><span
										aria-labelledby="gender-none" class="css-mgd87h et8nqc31">선택안함</span></label>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label for="birthYear" class="css-1obgjqh e744wfw4">생년월일</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-18n8lnw e9ted1s1">
									<div class="css-1dkwuq4 e1uzxhvi6">
										<div height="40" class="css-xsmgyi e1uzxhvi3">
											<input data-testid="input-box" name="birthYear"
												placeholder="YYYY" type="text" height="40"
												class="css-151eme7 e1uzxhvi2" value="">
										</div>
									</div>
									<span class="css-5lnvt6 e9ted1s0"></span>
									<div class="css-1dkwuq4 e1uzxhvi6">
										<div height="40" class="css-xsmgyi e1uzxhvi3">
											<input data-testid="input-box" name="birthMonth"
												placeholder="MM" type="text" height="40"
												class="css-151eme7 e1uzxhvi2" value="">
										</div>
									</div>
									<span class="css-5lnvt6 e9ted1s0"></span>
									<div class="css-1dkwuq4 e1uzxhvi6">
										<div height="40" class="css-xsmgyi e1uzxhvi3">
											<input data-testid="input-box" name="birthDay"
												placeholder="DD" type="text" height="40"
												class="css-151eme7 e1uzxhvi2" value="">
										</div>
									</div>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label class="css-1obgjqh e744wfw4">선택약관동의</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-bcffy2 e8in3f65">
									<div class="css-1n729k6 e8in3f64">
										<label class="css-1mjkje9 e1dcessg3"><input
											type="checkbox" class="css-agvwxo e1dcessg2">
											<div class="css-79hxr7 e1dcessg1">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
														stroke="#ddd" fill="#fff"></path>
													<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
														stroke-width="1.5" stroke-linecap="round"
														stroke-linejoin="round"></path></svg>
											</div> <span>개인정보 수집·이용 동의</span></label><span class="css-14kcwq8 e8in3f63">(선택)</span>
									</div>
									<a class="css-qj3jn7 e8in3f62">약관보기</a>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-10a7gq2 e8in3f60"></div>
						<div class="css-1pjgd36 e744wfw6">
							<div class="css-1y8737n e744wfw5">
								<label class="css-1obgjqh e744wfw4">이용약관동의</label>
							</div>
							<div class="css-82a6rk e744wfw3">
								<div class="css-1n729k6 e8in3f64">
									<label class="css-1mjkje9 e1dcessg3"><input
										type="checkbox" class="css-agvwxo e1dcessg2">
										<div class="css-79hxr7 e1dcessg1">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
													stroke="#ddd" fill="#fff"></path>
												<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
													stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
										</div> <span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의</span></label><span
										class="css-14kcwq8 e8in3f63">(선택)</span>
								</div>
								<div class="css-1rgde34 e8in3f61">
									<label class="css-1mjkje9 e1dcessg3" for="OptionalTermsOfSms"><input
										id="OptionalTermsOfSms" type="checkbox"
										class="css-agvwxo e1dcessg2">
										<div class="css-79hxr7 e1dcessg1">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
													stroke="#ddd" fill="#fff"></path>
												<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
													stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
										</div> <span>SMS</span></label><label class="css-1mjkje9 e1dcessg3"
										for="OptionalTermsOfMailing"><input
										id="OptionalTermsOfMailing" type="checkbox"
										class="css-agvwxo e1dcessg2">
										<div class="css-79hxr7 e1dcessg1">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path
													d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
													stroke="#ddd" fill="#fff"></path>
												<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
													stroke-width="1.5" stroke-linecap="round"
													stroke-linejoin="round"></path></svg>
										</div> <span>이메일</span></label>
								</div>
							</div>
							<div class="css-1w0ksfz e744wfw2"></div>
						</div>
						<div class="css-14332pf e1m8ervv0">
							<button class="css-ufulao e4nu7ef3" type="button">
								<span class="css-ymwvow e4nu7ef1">탈퇴하기</span>
							</button>
							<button class="css-1qirdbn e4nu7ef3" type="submit">
								<span class="css-ymwvow e4nu7ef1">회원정보수정</span>
							</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>