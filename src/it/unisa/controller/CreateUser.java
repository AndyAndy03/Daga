package it.unisa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unisa.model.User;
import it.unisa.model.UserDAO;

@SuppressWarnings("serial")
public class CreateUser extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");;
        String password = request.getParameter("password");;
        String cognome = request.getParameter("cognome");;
        String nome = request.getParameter("nome");;
        String email = request.getParameter("email");;
        String telefono = request.getParameter("telefono");;
        int admin = 0;
        //Integer.valueOf(request.getParameter("admin"));
        UserDAO ud= new UserDAO();
        int user_check=ud.username_register(username);
        int email_check=ud.email_register(email);
        
        String error="";
        if(user_check==1)
        	error=error+"username già in uso ";
        if(email_check==1)
        	error=error+"email già in uso ";
        
        if(error!="")
        {
        	String address = "register_form.jsp";
        	request.setAttribute("error", error);
            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
        
// instantiating a User class to query the data
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setCognome(cognome);
        user.setNome(nome);
        user.setEmail(email);
        user.setTelefono(telefono);
        user.setAdmin(admin);


        UserDAO service = new UserDAO();
        int result = service.doSave(user);

        // depending on the Model response the  "address" of the proper View component (jsp) is set
        if (result != -1) {
            String address;
            request.setAttribute("utente", user);
            request.setAttribute("action", "inserito");
            address = "/results/success.jsp";

            RequestDispatcher dispatcher =
                    request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
        }
    }
}
