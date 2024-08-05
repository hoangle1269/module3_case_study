package Case_Module3.login.model.DTO;

public class TransactionDTO {
    int idTransaction;
    int idUser;
    int idEWallets;
    int category;
    long money;
    String note;
    String type;
    String dayTrading;
    String dateCreated;
    String LatestDate;

    public TransactionDTO() {
    }

    public TransactionDTO(int idTransaction, int idUser, int idEWallets, int category, long money, String note, String type, String dayTrading, String dateCreated, String latestDate) {
        this.idTransaction = idTransaction;
        this.idUser = idUser;
        this.idEWallets = idEWallets;
        this.category = category;
        this.money = money;
        this.note = note;
        this.type = type;
        this.dayTrading = dayTrading;
        this.dateCreated = dateCreated;
        this.LatestDate = latestDate;
    }

    public int getIdTransaction() {
        return idTransaction;
    }

    public void setIdTransaction(int idTransaction) {
        this.idTransaction = idTransaction;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdEWallets() {
        return idEWallets;
    }

    public void setIdEWallets(int idEWallets) {
        this.idEWallets = idEWallets;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public long getMoney() {
        return money;
    }

    public void setMoney(long money) {
        this.money = money;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDayTrading() {
        return dayTrading;
    }

    public void setDayTrading(String dayTrading) {
        this.dayTrading = dayTrading;
    }

    public String getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getLatestDate() {
        return LatestDate;
    }

    public void setLatestDate(String latestDate) {
        LatestDate = latestDate;
    }

    @Override
    public String toString() {
        return "TransactionDTO{" +
                "idTransaction=" + idTransaction +
                ", idUser=" + idUser +
                ", idEWallets=" + idEWallets +
                ", category=" + category +
                ", money=" + money +
                ", note='" + note + '\'' +
                ", type='" + type + '\'' +
                ", dayTrading='" + dayTrading + '\'' +
                ", dateCreated='" + dateCreated + '\'' +
                ", LatestDate='" + LatestDate + '\'' +
                '}';
    }
}
