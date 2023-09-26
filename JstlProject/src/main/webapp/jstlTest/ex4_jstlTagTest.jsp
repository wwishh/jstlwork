<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>


<body>
<fmt:requestEncoding value="utf-8"/>
	<form action="" method="post">
		<table class="table table-bordered" style="width: 300px">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" class="form-control"
					style="width: 120px"></td>
			</tr>

			<tr>
				<th>나이</th>
				<td><input type="text" name="age" class="form-control"
					style="width: 120px"></td>
			</tr>

			<tr>
				<th>급여</th>
				<td><input type="text" name="pay" class="form-control"
					style="width: 120px"></td>
			</tr>
 
			<tr>
				<th>가고싶은나라</th>
				<td><input type="text" name="nara" class="form-control"
					style="width: 120px"></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><button type="submit" class="btn btn-success">결과확인</button></td>
			</tr>
		</table>
	</form>
	
	<!-- 이름을 입력했을경우에만 출력 div출력
	
	이름: 김영환
	나이: 19세(미성년자)..조건:20살 이상이면 성년 아니면 미성년
	월급여 : 180만원 ..화폐단위와 천단위구분기호
	가고싶은나라: choose이용해서 출력은 맘대로 할것 -->
	
	<c:set var="name" value="${param.name }"></c:set>
	<c:set var="age" value="${param.age }"></c:set>
	<c:set var="pay" value="${param.pay }"></c:set>
	<c:set var="nara" value="${param.nara }"></c:set>
	
	<c:if test="${!empty name }">
		<div class="alert alert-info" style="width:400px">
			이름: ${name }<br>
			<c:if test="${age>=20 }">
				나이: ${age}세(성인)<br>
			</c:if>
			<c:if test="${age<20 }">
				나이: ${age}세(미성년자)<br> 
			</c:if>
			<fmt:formatNumber value="${pay }" type="currency"/><br>
			
			<c:choose>
				<c:when test="${nara=='영국' }">
				영국은 런던!
				</c:when>
				
				<c:when test="${nara=='프랑스' }">
				프랑스는 파리!
				</c:when>
				
				<c:when test="${nara=='일본' }">
				일본은 도쿄!
				</c:when>
				<c:otherwise>
					${nara }는 없음
				</c:otherwise>
			</c:choose>
		</div>
	</c:if>
</body>
</html>