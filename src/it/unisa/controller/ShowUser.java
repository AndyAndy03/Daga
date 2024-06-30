package it.unisa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;

import it.unisa.model.UserDAO;

@SuppressWarnings("serial")
public class ShowUser extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");

        UserDAO service = new UserDAO();
        User user = (User) service.doRetrieveById(username);

        request.setAttribute("utente", user);
        String address;

        if (user == null) {
            request.setAttribute("badId", username);
            address = "/WEB-INF/results/unknown-user.jsp";
        } else {
            address = "/WEB-INF/results/high-balance.jsp";
        }

        RequestDispatcher dispatcher =
                request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }
}
