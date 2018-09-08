<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="common/header.jspf"%>
<br>
<h3>What would you like to do?</h3>
<c:url var="newCustomerUrl" value="/newCustomer"/>
<c:url var="customerListUrl" value="/customerSearch"/>
<ul>
  <li><a href="${newCustomerUrl}">Add new Customer</a></li>
  <li><a href="${customerListUrl}">View Customer Data</a></li>
  <li><a href="#">Reporting</a></li>
</ul>


<%@include file="common/footer.jspf"%>