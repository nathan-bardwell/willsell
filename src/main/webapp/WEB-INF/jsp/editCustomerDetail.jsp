<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Edit Customer"/>
<%@include file="common/header.jspf"%>
<div class="jumbotron">
	<h1>Edit Customer Info</h1>
	<br>
	<c:url var="editCustomerUrl" value="/editCustomerDetail" />
	<div id="editCustomerForm">
		<form action="${editCustomerUrl}" method="POST" autocomplete="off">
			<div class="row">
				<div class="col">
				<input type="text" name="id" class="d-none"  value="${customer.id}">
					First Name: <input type="text" name="firstName"
						class="form-control" value="${customer.firstName}">
				</div>
				<div class="col">
					Last Name: <input type="text" name="lastName" class="form-control" value="${customer.lastName}">
				</div>
			</div>
			<div class="row">
				<div class="col-8">
					Address 1: <input type="text" name="address1" class="form-control" value="${customer.address1}">
				</div>
			
				<div class="col-4">
					Address 2: <input type="text" name="address2" class="form-control" value="${customer.address2}">
				</div>
				</div>
			<div class="row">
				<div class="col">
					City: <input type="text" name="city" class="form-control" value="${customer.city}">
				</div>
				<div class="col">
					State: <select class="form-control" name="state">
						<option value="AL">Alabama</option>
						<option value="AK">Alaska</option>
						<option value="AZ">Arizona</option>
						<option value="AR">Arkansas</option>
						<option value="CA">California</option>
						<option value="CO">Colorado</option>
						<option value="CT">Connecticut</option>
						<option value="DE">Delaware</option>
						<option value="DC">District Of Columbia</option>
						<option value="FL">Florida</option>
						<option value="GA">Georgia</option>
						<option value="HI">Hawaii</option>
						<option value="ID">Idaho</option>
						<option value="IL">Illinois</option>
						<option value="IN">Indiana</option>
						<option value="IA">Iowa</option>
						<option value="KS">Kansas</option>
						<option value="KY">Kentucky</option>
						<option value="LA">Louisiana</option>
						<option value="ME">Maine</option>
						<option value="MD">Maryland</option>
						<option value="MA">Massachusetts</option>
						<option value="MI">Michigan</option>
						<option value="MN">Minnesota</option>
						<option value="MS">Mississippi</option>
						<option value="MO">Missouri</option>
						<option value="MT">Montana</option>
						<option value="NE">Nebraska</option>
						<option value="NV">Nevada</option>
						<option value="NH">New Hampshire</option>
						<option value="NJ">New Jersey</option>
						<option value="NM">New Mexico</option>
						<option value="NY">New York</option>
						<option value="NC">North Carolina</option>
						<option value="ND">North Dakota</option>
						<option value="OH" selected="selected">Ohio</option>
						<option value="OK">Oklahoma</option>
						<option value="OR">Oregon</option>
						<option value="PA">Pennsylvania</option>
						<option value="RI">Rhode Island</option>
						<option value="SC">South Carolina</option>
						<option value="SD">South Dakota</option>
						<option value="TN">Tennessee</option>
						<option value="TX">Texas</option>
						<option value="UT">Utah</option>
						<option value="VT">Vermont</option>
						<option value="VA">Virginia</option>
						<option value="WA">Washington</option>
						<option value="WV">West Virginia</option>
						<option value="WI">Wisconsin</option>
						<option value="WY">Wyoming</option>
					</select>
				</div>
				<div class="col">
					Zip Code: <input type="text" name="zipCode" class="form-control" value="${customer.zipCode}">
				</div>
			</div>
			<div class="row">
				<div class="col">
					Phone Number: <input type="tel" name="phoneNumber"
						class="form-control" value="${customer.phoneNumber}">
				</div>
				<div class="col">
					Email Address: <input type="email" name="email"
						class="form-control" value="${customer.email}">
				</div>
			</div>
			<div class="row">
				<div class="col">
					Account Number: <input type="text" name="acctNumber"
						class="form-control" value="${customer.acctNumber}">
				</div>
			</div>
			<div class="row">
				<div class="col">
					Install Date: <input type="date" name="installDate"
						class="form-control" value="${customer.installDate}">
				</div>
				<div class="col">
					Install Time: <input type="time" name="installTime"
						class="form-control" value="${customer.installTime}">
				</div>
			</div>
			<div class="row">
			<div class="col radio">
					TV:<br>
					<div>
					<fieldset id="psuTV">
					<c:choose>
					<c:when test="${customer.psuTV}">
						<input type="radio" value="true" name="psuTV" checked> Yes<br>
						<input type="radio" value="false" name="psuTV"> No
					</c:when>
					<c:otherwise>
						<input type="radio" value="true" name="psuTV"> Yes<br>
						<input type="radio" value="false" name="psuTV" checked> No
					</c:otherwise>	
					</c:choose>
					</fieldset></div>
				</div>
				<div class="col radio">
					Internet:<br>
					<div>
					<fieldset id="psuInternet">
					<c:choose>
					<c:when test="${customer.psuInternet}">
						<input type="radio" value="true" name="psuInternet" checked> Yes<br>
						<input type="radio" value="false" name="psuInternet"> No
					</c:when>
					<c:otherwise>
						<input type="radio" value="true" name="psuInternet"> Yes<br>
						<input type="radio" value="false" name="psuInternet" checked> No
					</c:otherwise>	
					</c:choose>
					</fieldset></div>
				</div>
				<div class="col radio">
					Phone:<br>
					<div>
					<fieldset id="psuPhone">
					<c:choose>
					<c:when test="${customer.psuPhone}">
						<input type="radio" value="true" name="psuPhone" checked> Yes<br>
						<input type="radio" value="false" name="psuPhone"> No
					</c:when>
					<c:otherwise>
						<input type="radio" value="true" name="psuPhone"> Yes<br>
						<input type="radio" value="false" name="psuPhone" checked> No
					</c:otherwise>	
					</c:choose>
					</fieldset></div>
				</div>
			</div>
			<div class="row">
				<div class="col">Sale Location:
					<input type="text" name="saleLocation" class="form-control" value="${customer.saleLocation}">
					<!-- Sale Location: <select name="saleLocation" class="form-control">
						<option value="Aurora">3250-Aurora</option>
						<option value="Avon">5066-Avon</option>
						<option value="Brookpark">2073-Brookpark</option>
						<option value="Chardon">3293-Chardon</option>
						<option value="Eastlake">1863-Eastlake</option>
						<option value="Elyria">4255-Elyria</option>
						<option value="Fairlawn">1895-Fairlawn</option>
						<option value="Lorain">1839-Lorain</option>
						<option value="Macedonia">1927-Macedonia</option>
						<option value="Mayfield Hts.">5083-Mayfield Hts.</option>
						<option value="Medina">1894-Medina</option>
						<option value="Mentor">1857-Mentor</option>
						<option value="South Euclid">2362-South Euclid</option>
						<option value="Steelyard">4285-Steelyard</option>
						<option value="Stow">2323-Stow</option>
					</select> -->
				</div>
				<div class="col">
					Date of Interaction: <input type="date" class="form-control"
						name="dateOfSale" value="${customer.dateOfSale}">
				</div>
				<div class="col radio">
					EZConnect?<br>
					<div>
					<fieldset id="ezConnect">
					<c:choose>
					<c:when test="${customer.ezConnect}">
						<input type="radio" value="true" name="ezConnect" checked> Yes<br>
						<input type="radio" value="false" name="ezConnect"> No
					</c:when>
					<c:otherwise>
						<input type="radio" value="true" name="ezConnect"> Yes<br>
						<input type="radio" value="false" name="ezConnect" checked> No
					</c:otherwise>	
					</c:choose>
					</fieldset></div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					Notes:<br>
					<textarea name="notes" rows="5" cols="40" class="form-control"><c:out  value="${customer.notes}"/></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="Submit" value="Submit Changes" class="btn btn-danger">
				</div>
			</div>
		</form>
	</div>
</div>

<%@include file="common/footer.jspf"%>