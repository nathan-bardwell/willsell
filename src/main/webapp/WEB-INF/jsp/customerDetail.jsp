<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Customer Detail"/>
<%@include file="common/header.jspf"%>
<div class="jumbotron">
	<div class="row">
		<div class="col detailItem">
			<h1 style="text-align: center"><c:out value="${customer.firstName} ${customer.lastName}"/></h1>
		</div>
	</div>
		<div class="row">
		<div class="col detailItem">
			<strong>Phone Number:</strong><br>
			<a href="tel:${customer.phoneNumber}"><c:out value="${customer.fmtPhoneNumber}"/></a>
		</div>
		<div class="col detailItem">
			<strong>Email Address:</strong><br>
			<a href="mailto:${customer.email}"><c:out value="${customer.email}"/></a>
		</div>
		</div>
	<div class="row">
		<div class="col detailItem">
		<strong>Address 1:</strong><br>
			<c:out value="${customer.address1}"/>
		</div>
		<div class="col detailItem">
		<strong>Address 2:</strong><br>
			<c:out value="${customer.address2}"/>
		</div>
	</div>
	<div class="row">
		<div class="col detailItem">
		<strong>City:</strong><br>
			<c:out value="${customer.city}"/>
		</div>
		<div class="col detailItem">
		<strong>State:</strong><br>
			<c:out value="${customer.state}"/>
		</div>
		<div class="col detailItem">
		<strong>Zip Code:</strong><br>
			<c:out value="${customer.zipCode}"/>
		</div>
	</div>
	<div class="row">
		<div class="col detailItem">
		<strong>Account Number:</strong><br>
			<c:out value="${customer.acctNumber}"/>
		</div>
	</div>
	<div class="row">
		<div class="col detailItem">
		<strong>Install Date:</strong><br>
			<c:out value="${customer.installDate}"/>
		</div>
		<div class="col detailItem">
		<strong>Install Time:</strong><br>
			<c:out value="${customer.installTime}"/>
		</div>
	</div>
	<div class="row">
		<div class="col detailItem">
		<strong>Phone:</strong><br>
		<c:choose>
			<c:when test="${customer.psuPhone}">
				Yes
			</c:when>
			<c:otherwise>
				No
			</c:otherwise>
		</c:choose>
		</div>
		<div class="col detailItem">
		<strong>Internet:</strong><br>
			<c:choose>
			<c:when test="${customer.psuInternet}">
				Yes
			</c:when>
			<c:otherwise>
				No
			</c:otherwise>
		</c:choose>
		</div>
		<div class="col detailItem">
		<strong>TV:</strong><br>
			<c:choose>
			<c:when test="${customer.psuTV}">
				Yes
			</c:when>
			<c:otherwise>
				No
			</c:otherwise>
		</c:choose>
		</div>
	</div>
	<div class="row">
		<div class="col detailItem">
		<strong>Sale Location:</strong><br>
			<c:out value="${customer.saleLocation}"/>
		</div>
		<div class="col detailItem">
		<strong>Date of Interaction:</strong><br>
			<c:out value="${customer.dateOfSale}"/>
		</div>
		<div class="col detailItem">
		<strong>EZConnect?</strong><br>
			<c:out value="${customer.ezConnect}"/>
		</div>
	</div>
	<div class="row">
		<div class="col detailItem">
		<strong>Notes:</strong><br>
			<c:out value="${customer.notes}"/>
		</div>
	</div>
	<div class="row">
		<div class="col">
		<c:url var="editInfoUrl" value="/editCustomerDetail"/>
			<a href="${editInfoUrl}?id=${customer.id}" class="btn btn-danger">Edit Customer Info</a>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>