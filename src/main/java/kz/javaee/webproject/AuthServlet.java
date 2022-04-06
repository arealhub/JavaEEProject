package kz.javaee.webproject;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import kz.javaee.db.DBManager;
import kz.javaee.db.Users;

import java.io.IOException;

@WebServlet(name = "auth", value = "/auth")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String redirect = "/login?emailerror";

        Users user = DBManager.getUser(email);

        if (user != null) {

            redirect = "/login?passworderror";

            if (user.getPassword().equals(password)) {

                request.getSession().setAttribute("CURRENT_USER", user);
                redirect = "/";

            }
        }

        response.sendRedirect(redirect);

    }
}
