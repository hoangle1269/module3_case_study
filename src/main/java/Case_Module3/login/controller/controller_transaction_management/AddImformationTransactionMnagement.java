package Case_Module3.login.controller.controller_transaction_management;

import Case_Module3.login.model.EWalletsDao;
import Case_Module3.login.model.TransactionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "addImformationTransactionMnagement", urlPatterns = "/addImformationTransactionMnagement")
public class AddImformationTransactionMnagement extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String email = (String) session.getAttribute("userEmail");
        int idUser = EWalletsDao.checkIdUser(email);
        long money = Long.parseLong(req.getParameter("money"));
        long codeWallet = Long.parseLong(req.getParameter("codeWallet"));
        int idWallet = 0;
        long moneys = 0;
        try {
            idWallet = EWalletsDao.checkIdWallet(codeWallet);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String type = req.getParameter("type");
        String dayTrading = req.getParameter("dayTrading");
        String note = req.getParameter("note");
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = now.format(formatter);
        long checkMoney = EWalletsDao.checkMoney(idWallet);
        if (checkMoney == 0) {
            EWalletsDao.setMoney(moneys, idWallet);
        }
        if (type.equals("chi")) {
            money = -money;
        }
        EWalletsDao.updateWalletMoney(money, idWallet);
        try {
            TransactionDao.addTransaction(idUser, idWallet, money, note, type, dayTrading, formattedDateTime);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect("/transactionManagement");
    }

}
