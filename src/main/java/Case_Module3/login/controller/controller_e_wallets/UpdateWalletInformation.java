package Case_Module3.login.controller.controller_e_wallets;

import Case_Module3.login.model.EWalletsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateWalletInformation",urlPatterns = "/UpdateWalletInformation")
public class UpdateWalletInformation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nameWallet = req.getParameter("name");
        String number_raw = req.getParameter("number");
        String cleanedInputNumber = number_raw.replaceAll("\\s+", "");
        long codeWallet = Long.parseLong(cleanedInputNumber);
        String date = req.getParameter("date");
        String cvv = req.getParameter("cvv");
        int idWallet = Integer.parseInt(req.getParameter("idWallet"));
        EWalletsDao.updateWalletInformation(nameWallet,codeWallet,date,cvv,idWallet);
        resp.sendRedirect("/showWalletInformationWhereId?idwallet="+idWallet);
    }
}
