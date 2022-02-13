<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org"
      xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head>
        <title>Login</title>
    </head>
    <body>
        <div th:if="${param.error}">
        <p style="color:red">
            Invalid username or password.
            </p>
        </div>
        <div th:if="${param.logout}">
            You have been logged out from the Application
        </div>
        <form th:action="@{/login}" method="post">
            <div><label> User Name  <br><input type="text" name="username"/> </label></div><br>
            <div><label> Password <br><input type="password" name="password"/> </label></div><br>
            <div><input type="submit" value="Sign In"/></div>
        </form>
        <br>
        <a href="/">Return to Main Page</a>
    </body>
</html>