package ui;

import javax.swing.*;
import java.awt.*;

public class ThemGiaoDienMenuVaoCard extends JPanel {
    private CardLayout cardLayout;
    private JPanel cardPanel;

    public ThemGiaoDienMenuVaoCard() {
        cardLayout = new CardLayout();
        cardPanel = new JPanel(cardLayout);

        // Tạo các giao diện cho từng chức năng và thêm chúng vào CardLayout
        MovieManagementPanel movieManagementPanel = new MovieManagementPanel();
        ChucNangDatVe ticketBookingPanel = new ChucNangDatVe();
        QuanLyKhachHang customerManagementPanel = new QuanLyKhachHang();
        
        cardPanel.add(movieManagementPanel, "movieManagement");
        cardPanel.add(ticketBookingPanel, "ticketBooking");
        cardPanel.add(customerManagementPanel, "customerManagement");

        setLayout(new BorderLayout());
        add(cardPanel, BorderLayout.CENTER);
    }

    // Phương thức để hiển thị nội dung tương ứng với chức năng
    public void showContent(String functionName) {
        cardLayout.show(cardPanel, functionName);
    }
}
