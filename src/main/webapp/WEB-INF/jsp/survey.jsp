<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>
<h1>
	<c:out value="${park.parkname}" />
</h1>
<c:set var="pageTitle" value="survey" />
<c:url var="newSurveyUrl" value="/survey" />
<form action="${newSurveyUrl}" method="post">

	<div class="form-group">
		<label for="Favorite Park">Favorite Park</label> <select
			class="form-control" name="favoritePark">
			<c:forEach var="park" items="${park.parkname}">
				<option>${park}</option>
			</c:forEach>
		</select>
	</div>

	<div class="form-group">
		<label for="emailAddress">Email address</label> <input type="email"
			class="form-control" name="emailAddress"
			placeholder="name@example.com">
	</div>

	<div class="form-group">
		<label for="state">Where ye be from?</label> <select
			class="form-control" name="state">
			<option>AL</option>
			<option>AK</option>
			<option>AZ</option>
			<option>AR</option>
			<option>CA</option>
			<option>CO</option>
			<option>CT</option>
			<option>DE</option>
			<option>FL</option>
			<option>GA</option>
			<option>HI</option>
			<option>ID</option>
			<option>IL</option>
			<option>IN</option>
			<option>IA</option>
			<option>KS</option>
			<option>LA</option>
			<option>ME</option>
			<option>MD</option>
			<option>MA</option>
			<option>MI</option>
			<option>MN</option>
			<option>MS</option>
			<option>MO</option>
			<option>MT</option>
			<option>NE</option>
			<option>NV</option>
			<option>NH</option>
			<option>NJ</option>
			<option>NM</option>
			<option>NY</option>
			<option>NC</option>
			<option>ND</option>
			<option>OH</option>
			<option>OK</option>
			<option>OR</option>
			<option>PA</option>
			<option>RI</option>
			<option>SC</option>
			<option>SD</option>
			<option>TN</option>
			<option>TX</option>
			<option>UT</option>
			<option>VT</option>
			<option>VA</option>
			<option>WA</option>
			<option>WV</option>
			<option>WI</option>
			<option>WY</option>
			<option>AS</option>
			<option>DC</option>
			<option>FM</option>
			<option>GU</option>
			<option>MH</option>
			<option>MP</option>
			<option>PW</option>
			<option>PR</option>
			<option>VI</option>
		</select>
	</div>

	<div class="form-group">
		<div class="form-check">
			<input class="form-check-input" type="radio" name="activityLevel"
				value="inactive" checked> <label class="form-check-label"
				for="activityLevel"> Inactive </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="activityLevel"
				id="sedentary" value="sedentary" disabled> <label
				class="form-check-label" for="activityLevel"> Sedentary </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="activityLevel"
				id="active" value="active" disabled> <label
				class="form-check-label" for="activityLevel"> Active </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="activityLevel"
				id="extremelyActive" value="extremelyActive" disabled> <label
				class="form-check-label" for="activityLevel"> Extremely
				Active </label>
		</div>
	</div>
	<button class="btn btn-primary" type="submit">Submit form</button>
</form>

<%@include file="common/footer.jspf"%>
