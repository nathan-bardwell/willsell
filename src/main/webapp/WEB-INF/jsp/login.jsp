<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="common/header.jspf"%>
<script type="text/javascript">
    $(document).ready(function () {

        $("form").validate({

            rules : {
                userName : {
                    required : true
                },
                password : {
                    required : true
                }
            },
            messages : {
                confirmPassword : {
                    equalTo : "Passwords do not match"
                }
            },
            errorClass : "error"
        });
    });
</script>
<div class="jumbotron">

<div class="login-form-1 row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
        <c:url var="formAction" value="/login" />
        <form method="POST" action="${formAction}">
            <input type="hidden" name="destination" value="${param.destination}"/>
            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
            <div class="form-group">
                <label for="userName">User Name: </label>
                <input type="text" id="userName" name="userName" placeHolder="User Name" class="form-control" />
            </div>
            <div class="form-group">
                <label for="password">Password: </label>
                <input type="password" id="password" name="password" placeHolder="Password" class="form-control" />
            </div>
            <button type="submit" class="btn btn-primary form-control" >Login</button>
        </form>
    </div>
    <div class="col-sm-4"></div>
</div>
</div>

<%@include file="common/footer.jspf"%>