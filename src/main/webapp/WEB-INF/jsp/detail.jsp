<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>
<c:set var="pageTitle" value="detail" />

<div class="jumbotron parkInfo">
<div class="row">
<div class="col-sm info">
		
			<div><strong><c:out value="${park.parkname}" /></strong>
			<c:out value=" - ${park.state}" /><br>Founded in the year <c:out
					value="${park.yearfounded}" /></div>
		
			<c:url var="parkImgUrl"
				value="/img/parks/${park.parkcode.toLowerCase()}.jpg" />
			<div><img id="parkImg" alt="parkImg" src="${parkImgUrl}"><br>
			<strong>"<c:out value="${park.inspirationalquote}" />"
			</strong><br>- <c:out value="${park.inspirationalquotesource}" /></div>
			<div><c:out value="${park.parkdescription}" /></div>
		</div>
</div>
		<div class="row">
			<th>Annual Visitors</th>
			<div class="col- info"><c:out value="${park.annualvisitorcount}" /> visitors</div>
		</div>
		<div class="row">
			<th>Entry Fee</th>
			<div class="col- info">$<c:out value="${park.entryfee}" />.00
			</div>
		</div>
		<div class="row">
			<th>Park Acreage</th>
			<div class="col- info"><c:out value="${park.acreage}" /> acres</div>
		</div>
		<div class="row">
			<th>Park Elevation</th>
			<div class="col- info"><c:out value="${park.elevationinfeet}" /> ft</div>
		</div>
		<div class="row">
			<th>Miles of Trail</th>
			<div class="col- info"><c:out value="${park.milesoftrail}" /> mi</div>
		</div>
		<div class="row">
			<th>Number of Campsites</th>
			<div class="col- info">
			<c:out value="${park.numberofcampsites}" /></div>
		</div>
		<div class="row">
		<th>Climate</th>
		<div class="col- info">
		<c:out value="${park.climate}" /></div>
		</div>
		<div class="row">
			<th>Number of Animal Species</th>
			<div class="col- info">
			<c:out value="${park.numberofanimalspecies}" /> different species</div>
		</div>

	</div>
	<div class="jumbotron">
		<ul>

			<c:url var="formActionUrl" value="/detail" />
			<li class="nav-item nav-link"><form
					action="${formActionUrl}?parkcode=${park.parkcode}" method="post">
					<label for="tempUnit"><input name="tempUnit" type="radio"
						value="F">Fahrenheit</label> <label for="tempUnit"><input
						name="tempUnit" type="radio" value="C">Celcius</label> <input
						type="submit" class="btn btn-primary">
				</form></li>

		</ul>
		<div class="row justify-content-center">
			<div class="col- weather ">
				Today
				<div id="todayImg">
					<c:if test="${tempUnit == 'F'}">
						<c:set var="low" value="${weatherInfo[0].lowF}" />
						<c:set var="high" value="${weatherInfo[0].highF}" />
					</c:if>
					<c:if test="${tempUnit == 'C'}">
						<c:set var="low" value="${weatherInfo[0].lowC}" />
						<c:set var="high" value="${weatherInfo[0].highC}" />
					</c:if>
					<c:url var="todayWeatherUrl"
						value="/img/weather/${weatherInfo[0].forcast}.png" />
					<img src="${todayWeatherUrl}" alt="${weatherInfo[0].forcast}" /><br>
					Low:
					<c:out value="${low}" />&#xb0 <c:out value="${tempUnit}"/>
					<br> High:
					<c:out value="${high}" />&#xb0 <c:out value="${tempUnit}"/>
					<br>
					<c:out value="${weatherInfo[0].tempMessage}" />
				</div>
			</div>
		</div>
		<div class="row">
			<c:forEach begin="1" end="4" items="${weatherInfo}" var="weather">
				<c:if test="${tempUnit == 'f'}">
					<c:set var="low" value="${weather.lowF}" />
					<c:set var="high" value="${weather.highF}" />
				</c:if>
				<c:if test="${tempUnit == 'c'}">
					<c:set var="low" value="${weather.lowC}" />
					<c:set var="high" value="${weather.highC}" />
				</c:if>
				<div class="col-sm weather">
					Day
					<c:out value="${weather.fivedayforcastvalue}" />
					<div class="weatherContent D">
						<c:url var="weatherUrl"
							value="/img/weather/${weather.forcast}.png" />
						<img src="${weatherUrl}" alt="${weather.forcast}" /><br> Low:
						<c:out value="${low}" />&#xb0 <c:out value="${tempUnit}"/>
						<br> High:
						<c:out value="${high}" />&#xb0 <c:out value="${tempUnit}"/>
						<br>
						<c:out value="${weather.tempMessage}" />
					</div>
				</div>

			</c:forEach>
		</div>
	</div>
</div>




<%@include file="common/footer.jspf"%>