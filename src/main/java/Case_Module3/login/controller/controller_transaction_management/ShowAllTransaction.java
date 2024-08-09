package Case_Module3.login.controller.controller_transaction_management;

import Case_Module3.login.model.DTO.TransactionDTO;
import Case_Module3.login.model.DTO.WalletDTO;
import Case_Module3.login.model.EWalletsDao;
import Case_Module3.login.model.TransactionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "showAllTransaction", urlPatterns = "/showAllTransaction")
public class ShowAllTransaction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<TransactionDTO> listTransactions = new ArrayList<TransactionDTO>();
        List<WalletDTO> wallet = new ArrayList<WalletDTO>();
        try {
            listTransactions = TransactionDao.showAllTransaction();
            wallet = EWalletsDao.showWalletInformation();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        List<Long> limbAndAutumn = new ArrayList<Long>();
        long autumn = 0;
        long limb = 0;
        if (!listTransactions.isEmpty()) {
            for (TransactionDTO tx : listTransactions) {
                if (tx.getType().equals("chi")) {
                    limb += tx.getMoney();
                } else {
                    autumn += tx.getMoney();
                }
            }
        }
        limbAndAutumn.add(limb);
        limbAndAutumn.add(autumn);
        req.setAttribute("limbAndAutumn", limbAndAutumn);
        HttpSession session = req.getSession();
        session.setAttribute("wallet", wallet);
        req.setAttribute("listTransactions", listTransactions);
        req.getRequestDispatcher("/view/transaction_management/transactionManagement.jsp").forward(req, resp);
    }
}