<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>
<c:set var="pageTitle" value="home" />
<div class="container-fluid">


	<%-- header image --%>

	<div class="card mb-3">
		<c:url var="parkSkyImgUrl" value="/img/parks/parksky.jpg" />
		<img class="card-img-top" src="${parkSkyImgUrl}" alt="Card image cap">
	</div>

	<%-- navbar --%>

	<c:url var="homeUrl" value="/home" />
	<c:url var="surveyUrl" value="/survey" />

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">NPGeek</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="${homeUrl}">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="${surveyUrl}">Survey</a></li>
			</ul>
		</div>
	</nav>

	<!-- park Content -->

	<div class="ParkContent">
		<c:forEach var="parks" items="park">
			<div class="parksdiv">
				<c:url var="parkImgUrl" value="/img/parks/${parks.parkcode}.jpg" />
				<c:url var="detailUrl" value="/detail" />
				<a href="${detaillUrl}"><img src="${parkImgUrl}"></a>
			</div>
			<div class="parkNotes">
				<c:out value="${parks.parkname}" />
				<c:out value="${parks.parkdescription}" />
			</div>
		</c:forEach>
	</div>
</div>

<%@include file="common/footer.jspf"%>
