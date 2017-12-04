<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Borrow</title>
<%@ include file="header.jsp"%>
</head>
<body id="body-search">
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="column">
				<br> <br> <br>
			</div>
		</div>

	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-2.5 searchBoxSearch">
				<form action="/MVCMidtermProject/searchResults.do" method="GET">
					<input type="text" name="EquipmentType" value="${item.title}"
						placeholder="Equipment Type" required><br> <br>
					<input type="text" name="EquipmentCity" placeholder="zip code"
						value="${address.zip}"><br>
					<br> <input type="submit" value="submit">
				</form>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-8">
				<div class="row">
					<c:if test="${not empty searchResults}">
						<c:forEach items="${searchResults}" var="searchResults">
							<!-- <div class="col-sm-6">
									<img src=" " alt="image of equipment">
								</div> -->
							<div class="col-md-12">
								<iframe width="100%" height="300" frameborder="0"
									style="border: 0"
									src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAgD9VxSl5snVT8lXakoJXCifrmguQT43o
									    &q=${map}"
									allowfullscreen> </iframe>


								<!-- API Key: AIzaSyAgD9VxSl5snVT8lXakoJXCifrmguQT43o -->
								<!-- Replace Denver with ${maps} once there is actually non-null values -->

							
							</div>
							<div class="container searchBoxSearch">
								<div class="col-md-12"></div>
								Item: ${searchResults.title } <br> 
								Description: ${searchResults.description } <br>


							</div>
						</c:forEach>

					</c:if>
					<%-- <c:if test="${empty searchResults }">
							<div class="row container">
							<div class="col-sm-4"></div>
							<div class="col-sm-8 match">
							<h3>No Match</h3>
							</div>
							</div>
						</c:if> --%>

				</div>

			</div>
		</div>


	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>