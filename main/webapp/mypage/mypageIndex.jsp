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
	<div class="b2">마이페이지</div>
	<ul class="b3">
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/orderhistory.jsp">주문 내역 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/presenthistory.jsp">선물 내역 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/zzimlist.jsp">찜한 상품 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/shippingadr.jsp">배송지 관리 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/review.jsp">상품 후기 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/inquire.jsp">상품 문의 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/coupon.jsp">쿠폰 <span class="b6"></span>
		</a></li>
		<li class="b4"><a class="b5" href="${pageContext.request.contextPath }/mypage/privacy_confirm.jsp">개인정보수정 <span class="b6"></span>
		</a></li>
	</ul>
</body>
</html>