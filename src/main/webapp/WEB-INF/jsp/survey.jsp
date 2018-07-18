<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>
<c:set var="pageTitle" value="survey" />

<c:url var="newSurveyUrl" value="/survey" />
<form action="${newSurveyUrl}" method="post">
	<div class="form-group">
		<label for="exampleFormControlInput1">Email address</label> <input
			type="email" class="form-control" id="exampleFormControlInput1"
			placeholder="name@example.com">
	</div>
	<div class="form-group">
		<label for="exampleFormControlSelect1">Example select</label> <select
			class="form-control" id="exampleFormControlSelect1">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
		</select>
	</div>
	<div class="form-group">
		<label for="exampleFormControlSelect2">Example multiple select</label>
		<select multiple class="form-control" id="exampleFormControlSelect2">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
		</select>
	</div>
	<div class="form-group">
		<label for="exampleFormControlTextarea1">Example textarea</label>
		<textarea class="form-control" id="exampleFormControlTextarea1"
			rows="3"></textarea>
	</div>
</form>

<%@include file="common/footer.jspf"%>
