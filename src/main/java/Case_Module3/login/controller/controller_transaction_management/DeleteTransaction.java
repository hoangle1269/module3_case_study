package Case_Module3.login.controller.controller_transaction_management;

import Case_Module3.login.model.TransactionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteTransaction",urlPatterns = "/deleteTransaction")
public class DeleteTransaction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
int idTransaction = Integer.parseInt(req.getParameter("idTransaction"));
        try {
            TransactionDao.deleteTransaction(idTransaction);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect("/showAllTransaction");
    }
}
