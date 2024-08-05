package Case_Module3.login.model.DTO;

public class WalletDTO {
    int idWallet;
    int idUser;
    String nameWallet;
    long codeWallet;
    String expirationDate;
    String cvv;
    long money;

    public WalletDTO() {
    }

    public WalletDTO(int idWallet, int idUser, String nameWallet, long codeWallet, String expirationDate, String cvv, long money) {
        this.idWallet = idWallet;
        this.idUser = idUser;
        this.nameWallet = nameWallet;
        this.codeWallet = codeWallet;
        this.expirationDate = expirationDate;
        this.cvv = cvv;
        this.money = money;
    }

    public int getIdWallet() {
        return idWallet;
    }

    public void setIdWallet(int idWallet) {
        this.idWallet = idWallet;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getNameWallet() {
        return nameWallet;
    }

    public void setNameWallet(String nameWallet) {
        this.nameWallet = nameWallet;
    }

    public long getCodeWallet() {
        return codeWallet;
    }

    public void setCodeWallet(long codeWallet) {
        this.codeWallet = codeWallet;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    public long getMoney() {
        return money;
    }

    public void setMoney(long money) {
        this.money = money;
    }

    public static String formatCardNumber(long number) {
        String numberStr = String.format("%016d", number);
        StringBuilder sb = new StringBuilder(numberStr);
        for (int i = sb.length() - 4; i > 0; i -= 4) {
            sb.insert(i, "&nbsp;");
        }
        return sb.toString();
    }
}


