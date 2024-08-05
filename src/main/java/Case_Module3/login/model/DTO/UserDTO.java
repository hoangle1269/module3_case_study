package Case_Module3.login.model.DTO;

public class UserDTO {
    int id;
    String gmail;
    String password;

    public UserDTO() {
    }

    public UserDTO(int id, String gmail, String password) {
        this.id = id;
        this.gmail = gmail;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", gmail='" + gmail + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
