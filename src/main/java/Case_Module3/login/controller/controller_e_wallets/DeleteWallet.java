package Case_Module3.login.controller.controller_e_wallets;

import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteWallet", urlPatterns = "/deleteWallet")
public class DeleteWallet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idWallet = Integer.parseInt(req.getParameter("idWallet"));
        EWalletsDao.deleteWalletInformation(idWallet);
        resp.sendRedirect("/showListWallet");
    }
}
