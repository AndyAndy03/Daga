<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>LOGIN</title>
    <link rel="stylesheet" href="./css/stile_login.css">
    <style>
    body {
         
            background-color: rgba(0, 0, 0, 0.5); /* Nero trasparente */
            background-image: url("./resource/Prodotti/Uomo/Anelli/ane010stU/837976280.webp"), 
                           	   url("./resource/Prodotti/Donna/Anelli/ane003stD/c1425705-model.jpg");
          
        }
    </style>
</head>
<body>
<%
//session = request.getSession();
String error = (String) request.getAttribute("error");
%>

    <div class="login-container">
        <form action="Login" method="post">
            <div class="imgcontainer">
                <a href="./">
                    <img src="./WebContent/logo.jpg" alt="Avatar" class="avatar">
                </a>
            </div>

            <div class="container">
                <label for="username"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="username" required>

                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

<%
    if(error!=null)
    {
    %>
    <h7 style="color:red"> 
    <%=error%>
    </h7>
    <%} %>
                <button type="submit">Login</button>
            </div>

            <div class="container">
                <button type="button" class="cancelbtn" style="width: 30%; background-color: #ff4444;">Cancel</button>
                <span class="psw"><a href="./register_form.jsp">Non sono registrato</a></span>
            </div>
        </form>
    </div>
</body>
</html>
