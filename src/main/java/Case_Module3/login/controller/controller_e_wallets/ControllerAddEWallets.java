package Case_Module3.login.controller.controller_e_wallets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllerAddEWallets",urlPatterns = "/controllerAddEWallets")
public class ControllerAddEWallets extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/view/e_wallets/e-wallets.jsp").forward(req, resp);

    }
}
