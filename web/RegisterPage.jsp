<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
</head>
<body>

<%  
    Boolean invalidUsername = (Boolean)request.getAttribute("invalidUsername");
    Boolean invalidPassword = (Boolean)request.getAttribute("invalidPassword");
    Boolean invalidEmail = (Boolean)request.getAttribute("invalidEmail");
    Boolean invalidMatching = (Boolean)request.getAttribute("invalidMatching");
    Boolean existUsername = (Boolean)request.getAttribute("existUsername");
    
    String username = request.getParameter("txtUserRegister");
    String password = request.getParameter("txtPassRegister");
    String lastname = request.getParameter("txtLastRegister");
    String email = request.getParameter("txtGmailRegister");

    if (username == null) username = "";
    if (password == null) password = "";
    if (lastname == null) lastname = "";
    if (email == null) email = "";
   
%>

<form action="MainController" method="POST">
    <label>Username:</label>
    <input type="text" name="txtUserRegister" value="<%= username %>" />
    <%if(invalidUsername!=null){%>
        <% if (!invalidUsername) { %>
            <span style="color: red">Your username is not valid!!!</span>
        <% } else if (existUsername) { %>
            <span style="color: red">Your username was existed!!!!</span>
        <% }%>
    <%}else{%>
    <span >kí tự từ A-z gồm chữ in hoa và số từ 0-9. Độ dài của chuỗi 6-12  </span>
    <%}%>
    <br>

    <label>Password:</label>
    <input type="password" name="txtPassRegister" value="<%= password %>" />
    <%if(invalidPassword!=null){%>
        <% if (!invalidPassword) { %>
            <span style="color: red">Your password is invalid!!</span>
        <% } else if (!invalidMatching) { %>
            <span style="color: red">Your password is not matching!!</span>
        <% } %>
     <%}else{%>
        <span>ít nhất 1 chữ cái viết hoa/thường, ít nhất 1 kí tự số, ít nhất 1 kí tự đặc biệt.</span>
    <%}%>   
    <br>

    <label>Confirm:</label>
    <input type="password" name="txtConRegister" value="" />
    <br>

    <label>FullName:</label>
    <input type="text" name="txtFullNameRegister" value="<%= lastname %>" />
    <br>

    <label>Email:</label>
    <input type="text" name="txtGmailRegister" value="<%= email %>" />
    <%if(invalidEmail!=null){%>
        <% if (!invalidEmail) { %>
            <span style="color: red">Your email is invalid!!</span>
        <% } %>
    <%}else{%>
        <span> phải có @ và . trước phần miền. Với phần miền phải có ít nhất 2 kí tự .vn/.com  </span>
    <%}%>   
    <br>

    <input type="submit" name="btAction" value="Register" />
    <input type="reset" />
</form>

<form action="login.jsp">
    <input type="submit" value="LoginPage" />
</form>

</body>
</html>
