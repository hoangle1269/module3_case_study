package Case_Module3.login.test;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Main {
    public static void main(String[] args) {
        // Lấy thời gian hiện tại
        LocalDateTime now = LocalDateTime.now();

        // Hiển thị thời gian hiện tại
        System.out.println("Thời gian hiện tại: " + now);

        // Định dạng thời gian
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = now.format(formatter);
        System.out.println("Thời gian hiện tại (định dạng): " + formattedDateTime);
    }
}
