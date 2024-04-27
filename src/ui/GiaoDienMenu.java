package ui;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class GiaoDienMenu extends JPanel {
    private GiaoDienChinh mainFrame;

    public GiaoDienMenu(GiaoDienChinh mainFrame) {
        this.mainFrame = mainFrame;
        setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
        setPreferredSize(new Dimension(200, 600));

        addButton("Quản lý phim", "movieManagement");
        addButton("Đặt vé", "ticketBooking");
        addButton("Quản lý khách hàng", "customerManagement");
        
    }

    // Phương thức để thêm nút chức năng vào thanh menu
    private void addButton(String text, final String functionName) {
        JButton button = new JButton(text);
        button.setAlignmentX(LEFT_ALIGNMENT);
        button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                mainFrame.displayContent(functionName);
            }
        });
        add(button);
    }
}
