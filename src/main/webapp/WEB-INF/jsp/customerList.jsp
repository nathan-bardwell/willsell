<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Search Customers"/>
<%@include file="common/header.jspf"%>
<c:url var="formActionUrl" value="/admin/customerSearchResults"/>
<div class="jumbotron">
<form action="${formActionUrl}" method="GET">Search By:<br>
<div class="row">
	<div class="col">
	<select name="searchBy" class="form-control" id="searchParam">
		<option value="first_name">First Name</option>
		<option value="last_name">Last Name</option>
		<option value="date_of_sale">Date of Interaction</option>
		<option value="install_date">Install Date</option>
		<option value="sale_location">Sale Location</option>
		<option value="zip">Zip Code</option>
	</select><br></div>
	<div class="col">
	<div id="text-search"><input type="text" name="search" class="form-control" placeholder="Search"></div>
	<div id="date-search" class="d-none">
	Start Date:<br>
		<input type="date" name="fromDate" class="form-control">
		End Date:<br>
		<input type="date" name="toDate" class="form-control">
	</div>
	</div>
	<div class="col">
	<input type="submit" class="btn btn-primary">
	</div>
	</div>
</form>

<div class="row"><div class="col">
<table class='table table-bordered table-condensed  table-hover' id="customerTable">
	<tr style="background: #b8b8ba">
		<th>Name</th>
		<th>Phone</th>
		<th>Email</th>
	</tr>
	<c:url var="customerDetailUrl" value="/admin/customerDetail"/>
	<c:forEach var="customer" items="${customers}">
		<tr class="clickable-row" data-href="${customerDetailUrl}?id=${customer.id}">
			<td><c:out value="${customer.firstName} ${customer.lastName}"/></td>
			<td><a href="tel:${customer.phoneNumber}"><c:out value="${customer.fmtPhoneNumber}"/></a></td>
			<td><a href="mailto:${customer.email}"><c:out value="${customer.email}"/></a></td>
		</tr>
	</c:forEach>
</table>
</div></div>

</div>
<%@include file="common/footer.jspf"%>