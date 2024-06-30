<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>REGISTER</title>
    <link rel="stylesheet" href="./css/stile_login.css">
    <style>
    body {
         
            background-color: rgba(0, 0, 0, 0.5); /* Nero trasparente */
            background-image: url("./resource/Prodotti/Uomo/Anelli/ane010stU/837976280.webp"), 
                           	   url("./resource/Prodotti/Donna/Anelli/ane003stD/c1425705-model.jpg");
          
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<%
//session = request.getSession();
String error = (String) request.getAttribute("error");
%>
    <div class="login-container">
        <form id="registerForm" action="CreateUser" method="post">
            <div class="imgcontainer">
                <a href="./">
                    <img src="./WebContent/logo.jpg" alt="Avatar" class="avatar">
                </a>
            </div>

            <div class="container">
    <label for="username"><b>Username*</b></label>
    <input type="text" placeholder="Enter Username" name="username" id="userInput" required>
	<h7 id="mess_username" style="color:red"></h7><br>
    <label for="password"><b>Password*</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
    
    <label for="password2"><b>Conferma Password*</b></label>
    <input type="password" placeholder="Enter Password" name="password2" required>
	
	<label for="email"><b>Email*</b></label>
    <input type="text" placeholder="Enter Email" name="email"  id="emailInput" required>
    <h7 id="mess_email" style="color:red"></h7><br>
    <label for="cognome"><b>Cognome</b></label>
    <input type="text" placeholder="Enter cognome" name="cognome">
    
    <label for="nome"><b>Nome</b></label>
    <input type="text" placeholder="Enter Nome" name="nome">
    
    <label for="telefono"><b>Telefono</b></label>
    <input type="text" placeholder="Enter Telefono" name="telefono">
    <%
    if(error!=null)
    {
    %>
    <h7 style="color:red"> 
    <%=error%>
    </h7>
    <%} %>
    
    <button type="submit">Register</button>
  </div>

            <div class="container">
                <button type="button" class="cancelbtn" style="width: 30%; background-color: #ff4444;">Cancel</button>
                <span class="psw"><a href="./login_form.jsp">sono registrato</a></span>
            </div>
        </form>
    </div>
    
     <script>
     document.getElementById('registerForm').addEventListener('submit', function(event) {
         var form = event.target;

         var password = form.password.value;
         var password2 = form.password2.value;
         var email = form.email.value;

         // Simple email pattern
         var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
         // Password pattern: at least 8 characters, one uppercase letter, one special character
         var passwordPattern = /^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$/;

         if (password !== password2) {
             alert('Passwords non si corrisponde');
             event.preventDefault();
             return false;
         }

         if (!emailPattern.test(email)) {
             alert('email non valida');
             event.preventDefault();
             return false;
         }

         if (!passwordPattern.test(password)) {
             alert('Password deve essere di almeno 8 caratteri, uno maiuscolo, un carattere speciale e un numero');
             event.preventDefault();
             return false;
         }

         return true;
        });
     
     const emailInput = document.getElementById('emailInput');
     emailInput.addEventListener('input', function(event) {
    	 
    	 const email = document.getElementById('emailInput').value;
    	 var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
         console.log(email);
    	 let requestUrl = 'EmailCheck?email='+email;
    	 
    	 if (emailPattern.test(email))
             
    	 $.ajax({
    	        url: requestUrl, // URL della tua servlet
    	        method: 'GET',
    	        dataType: 'json',
    	        success: function(response) {
    	            
    	             console.log(response);
    	             if(response)
    	            	 document.getElementById('mess_email').textContent ="email già registrata";
    	             else
    	             	document.getElementById('mess_email').textContent ="";
    					
    	            }
    	    
    	})
    		
    		});
    	 
     
     const userInput = document.getElementById('userInput');
     userInput.addEventListener('input', function(event) {
    	 
    	 const user = document.getElementById('userInput').value;
    	 
    	 let requestUrl = 'UserCheck?user='+user;
    	 
    	 
             
    	 $.ajax({
    	        url: requestUrl, // URL della tua servlet
    	        method: 'GET',
    	        dataType: 'json',
    	        success: function(response) {
    	            
    	             console.log(response);
    	             if(response)
    	            	 document.getElementById('mess_username').textContent ="username già registrata";
    	             else
    	             	document.getElementById('mess_username').textContent ="";
    					
    	            }
    	    
    	})
    		
    		});
   
     
    </script>
</body>
</html>