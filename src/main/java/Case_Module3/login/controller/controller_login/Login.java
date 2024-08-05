package Case_Module3.login.controller.controller_login;

import Case_Module3.login.model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "logins", urlPatterns = "/loginUsers" )
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        HttpSession session = req.getSession();
        session.setAttribute("userEmail", email);

        boolean checkAccount;
        try {
            checkAccount = UserDao.checkAccount(email, password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        boolean checkInformation = UserDao.checkUserInformation(email);
        if (checkAccount && !checkInformation) {
            resp.sendRedirect("/userInformation");
            return;
        }
        if (checkAccount) {
            resp.sendRedirect("/controllerHomePage");
            return;
        }

        req.setAttribute("errorLogin", checkAccount);
        req.getRequestDispatcher("view/login/login.jsp").forward(req, resp);

    }

}
