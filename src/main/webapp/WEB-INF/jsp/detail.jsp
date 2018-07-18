<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>
<c:set var="pageTitle" value="detail" />

<div class="table-responsive-sm">
	
		<table class="table">
			<tr>
				<td><strong><c:out value="${park.parkname}"/></strong><c:out value=" - ${park.state}"/><br>Founded in the year <c:out value="${park.yearfounded}"/></td>
			</tr>
			<tr>
				<c:url var="parkImgUrl" value="/img/parks/${park.parkcode.toLowerCase()}.jpg" />
				<td><img alt="parkImg" src="${parkImgUrl}"><br><strong>"<c:out value="${park.inspirationalquote}"/>"</strong><br>- <c:out value="${park.inspirationalquotesource}"/></td>
			</tr>
			<tr>
				<td><c:out value="${park.parkdescription}" /></td>
			</tr>
			<tr>
				<th>Annual Visitors</th>
				<td><c:out value="${park.annualvisitorcount}" /> visitors</td>
			</tr>
			<tr>
				<th>Entry Fee</th>
				<td>$<c:out value="${park.entryfee}" />.00</td>
			</tr>
			<tr>
				<th>Park Acreage</th>
				<td><c:out value="${park.acreage}" /> acres</td>
			</tr>
			<tr>
				<th>Park Elevation</th>
				<td><c:out value="${park.elevationinfeet}" /> ft</td>
			</tr>
			<tr>
				<th>Miles of Trail</th>
				<td><c:out value="${park.milesoftrail}" /> mi</td>
			</tr>
			<tr>
				<th>Number of Campsites</th>
				<td><c:out value="${park.numberofcampsites}" /></td>
			</tr>
			<tr>
				<th>Climate</th>
				<td><c:out value="${park.climate}" /></td>
			</tr>
			<tr>
				<th>Number of Animal Species</th>
				<td><c:out value="${park.numberofanimalspecies}" /> different species</td>
			</tr>
		</table>
	
</div>

<%@include file="common/footer.jspf"%>