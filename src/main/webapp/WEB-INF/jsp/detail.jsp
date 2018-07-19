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
			</table>
			<table class="table">
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
		<div class="row" id="weather">
			<div class="col-sm">Today
				<div id="todayImg">
					<c:url var="todayWeatherUrl" value="/img/weather/${weatherInfo[0].forcast}.png"/>
					<img src="${todayWeatherUrl}" alt="${weatherInfo[0].forcast}"/><br>
					Low: <c:out value="${weatherInfo[0].low}"/>&#xb0<br>
					High: <c:out value="${weatherInfo[0].high}"/>&#xb0
				</div>
			</div>
			<div class="col-sm">Day 2
				<div>
					<c:url var="weatherUrl" value="/img/weather/${weatherInfo[1].forcast}.png"/>
					<img src="${weatherUrl}" alt="${weatherInfo[1].forcast}"/><br>
					Low: <c:out value="${weatherInfo[1].low}"/>&#xb0<br>
					High: <c:out value="${weatherInfo[1].high}"/>&#xb0
				</div>
			</div>
			<div class="col-sm">Day 3
				<div>
					<c:url var="weatherUrl" value="/img/weather/${weatherInfo[2].forcast}.png"/>
					<img src="${weatherUrl}" alt="${weatherInfo[2].forcast}"/><br>
					Low: <c:out value="${weatherInfo[2].low}"/>&#xb0<br>
					High: <c:out value="${weatherInfo[2].high}"/>&#xb0
				</div>
			</div>
			<div class="col-sm">Day 4
				<div>
					<c:url var="weatherUrl" value="/img/weather/${weatherInfo[3].forcast}.png"/>
					<img src="${weatherUrl}" alt="${weatherInfo[3].forcast}"/><br>
					Low: <c:out value="${weatherInfo[3].low}"/>&#xb0<br>
					High: <c:out value="${weatherInfo[3].high}"/>&#xb0
				</div>
			</div>
			<div class="col-sm">Day 5
				<div>
					<c:url var="weatherUrl" value="/img/weather/${weatherInfo[4].forcast}.png"/>
					<img src="${weatherUrl}" alt="${weatherInfo[4].forcast}"/><br>
					Low: <c:out value="${weatherInfo[4].low}"/>&#xb0<br>
					High: <c:out value="${weatherInfo[4].high}"/>&#xb0
				</div>
			</div>
		</div>
	
</div>

<%@include file="common/footer.jspf"%>