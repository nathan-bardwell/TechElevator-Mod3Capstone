<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>
<c:set var="pageTitle" value="detail" />

<div class="ParkDetailContent">
	<div class="parksdiv">
		<table>
			<tr>
				<c:url var="parkImgUrl" value="/img/parks/${parks.parkcode}.jpg" />
				<td><img alt="parkImg" src="$parkImgUrl}"></td>
			</tr>
			<tr>
				<td><c:out value="${parks.parkname}" /></td>
			<tr>
				<td><c:out value="${parks.parkdescription}" /></td>
				<td><c:out value="${parks.parkdescription}" /></td>
				<td><c:out value="${parks.parkdescription}" /></td>
				<td><c:out value="${parks.parkdescription}" /></td>
				<td><c:out value="${parks.parkdescription}" /></td>
				<td><c:out value="${parks.parkdescription}" /></td>
			</tr>
		</table>
	</div>
</div>

<%@include file="common/footer.jspf"%>