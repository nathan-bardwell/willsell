<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="WillSell | Add New Customer"/>
<%@include file="common/header.jspf"%>
<div class="jumbotron">
	<h1>Add a New Customer</h1>
	<br>
	<c:url var="newCustomerUrl" value="/admin/newCustomer" />
	<div id="newCustomerForm">
		<form action="${newCustomerUrl}" method="POST" autocomplete="off">
			<div class="row">
				<div class="col">
					First Name: <input type="text" name="firstName"
						class="form-control">
				</div>
				<div class="col">
					Last Name: <input type="text" name="lastName" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="col-8">
					Address 1: <input type="text" name="address1" class="form-control">
				</div>
			
				<div class="col-4">
					Address 2: <input type="text" name="address2" class="form-control">
				</div>
				</div>
			<div class="row">
				<div class="col">
					City: <input type="text" name="city" class="form-control">
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
					Zip Code: <input type="text" name="zipCode" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="col">
					Phone Number: <input type="tel" name="phoneNumber"
						class="form-control">
				</div>
				<div class="col">
					Email Address: <input type="email" name="email"
						class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="col">
					Account Number: <input type="text" name="acctNumber"
						class="form-control">
				</div>
			</div>
			<div class="row" id="installInfo">
				<div class="col">
					Install Date: <input type="date" name="installDate"
						class="form-control">
				</div>
				<div class="col">
					Install Time: <input type="time" name="installTime"
						class="form-control">
				</div>
			</div>
			<div class="row">
			<div class="col radio">
					TV:<br>
					<div>
					<fieldset id="psuTV">
						<input type="radio" value="true" name="psuTV"> Yes<br>
						<input type="radio" value="false" name="psuTV" checked> No
					</fieldset></div>
				</div>
				<div class="col radio">
					Internet:<br>
					<div>
					<fieldset id="psuInternet">
						<input type="radio" value="true" name="psuInternet"> Yes<br>
						<input type="radio" value="false" name="psuInternet" checked> No
					</fieldset></div>
				</div>
				<div class="col radio">
					Phone:<br>
					<div>
					<fieldset id="psuPhone">
						<input type="radio" value="true" name="psuPhone"> Yes<br>
						<input type="radio" value="false" name="psuPhone" checked> No
					</fieldset></div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					Sale Location: <select name="saleLocation" class="form-control">
						<option value="3250-Aurora">3250-Aurora</option>
						<option value="5066-Avon">5066-Avon</option>
						<option value="2073-Brookpark">2073-Brookpark</option>
						<option value="3293-Chardon">3293-Chardon</option>
						<option value="1863-Eastlake">1863-Eastlake</option>
						<option value="4255-Elyria">4255-Elyria</option>
						<option value="1895-Fairlawn">1895-Fairlawn</option>
						<option value="1839-Lorain">1839-Lorain</option>
						<option value="1927-Macedonia">1927-Macedonia</option>
						<option value="5083-Mayfield Hts.">5083-Mayfield Hts.</option>
						<option value="1894-Medina">1894-Medina</option>
						<option value="1857-Mentor">1857-Mentor</option>
						<option value="2362-South Euclid">2362-South Euclid</option>
						<option value="4285-Steelyard">4285-Steelyard</option>
						<option value="2323-Stow">2323-Stow</option>
					</select>
				</div>
				<div class="col">
					Date of Interaction: <input type="date" class="form-control"
						name="dateOfSale">
				</div>
				<div class="col radio">
					EZConnect?<br>
					<div>
					<fieldset id="ezConnect">
						<input type="radio" value="true" name="ezConnect"> Yes<br>
						<input type="radio" value="false" name="ezConnect"> No
					</fieldset></div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					Notes:<br>
					<textarea name="notes" rows="5" cols="40" class="form-control"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="Submit" value="Submit" class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
</div>

<%@include file="common/footer.jspf"%>