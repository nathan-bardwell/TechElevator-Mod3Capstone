<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>
<c:set var="pageTitle" value="home" />
<div class="container-fluid">

	<!-- park Content -->




	<div class="ParkContent">
		<c:forEach var="parks" items="${park}">
			<div class="parksdiv">
				<c:url var="parkImgUrl" value="/img/parks/${parks.parkcode.toLowerCase()}.jpg" />
				<c:url var="detailUrl" value="/detail" />
				<a href="${detaillUrl}"><img src="${parkImgUrl}" class="img-fluid"></a>
			</div>
			<div class="parkNotes">
				<c:out value="${parks.parkname}" />
				<c:out value="${parks.parkdescription}" />
			</div>
		</c:forEach>
	</div> 
</div>

<%@include file="common/footer.jspf"%>