<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table/main.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="limiter">
		<div class="container-table100">
		<div class="update_date">
				마지막 업데이트 : <b>${lastRelease}</b>	<button id="btn">갱신</button>
			</div>
			<div class="wrap-table100">
				<div class="table">

					<div class="row header">
						<div class="cell">Title</div>
						<div class="cell">Genre</div>
						<div class="cell">Nation</div>
						<div class="cell">Grade</div>
						<div class="cell">Release</div>
						<div class="cell">ProdYear</div>
					</div>
					<div class="row_wrap">
						<c:forEach items="${movieDataVOs}" var="movie">
							<div class="row">
								<div class="cell" data-title="제목">${movie.title}</div>
								<div class="cell" data-title="장르">${movie.genre}</div>
								<div class="cell" data-title="국가">${movie.nation}</div>
								<div class="cell" data-title="관람등급">${movie.ratingGrade}</div>
								<div class="cell" data-title="개봉일">${movie.releaseDate}</div>
								<div class="cell" data-title="제작연도">${movie.prodYear}</div>
							</div>
						</c:forEach>
					</div>




				</div>
			</div>
		</div>
	</div>




	<!-- 	</form> -->
	<script type="text/javascript">
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1;
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}
		today = yyyy + '-' + mm + '-' + dd;
		$("#btn").click(function() {
			if ('${lastRelease}' != today)
				//submit();
			else {
				alert('현재 최신 데이터 입니다.');
			}
		});
	</script>
</body>
</html>