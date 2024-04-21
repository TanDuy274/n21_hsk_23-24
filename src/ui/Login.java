package ui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;

import javax.swing.Box;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Login extends JFrame {

	private JPanel pN;
	private JPanel pC;
	private JPanel pS;
	private JLabel lblTitel;
	private JLabel lblName;
	private JTextField txtName;
	private JLabel lblPass;
	private JTextField txtPass;
	private JButton loginBtn;

	public Login() {
		// TODO Auto-generated constructor stub
		setTitle("Đăng nhập");
		setSize(350, 280);
		setResizable(false);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		pN = new JPanel();
		pC = new JPanel();
		pS = new JPanel();
		lblTitel = new JLabel("Quản lý Vé xem phim");
		lblTitel.setFont(new Font(getName(), Font.BOLD, 20));
		lblTitel.setForeground(Color.BLUE);
		Box panelName = Box.createVerticalBox();
		lblName = new JLabel("Tên đăng nhập:");
		txtName = new JTextField(25);
		txtName.setPreferredSize(new Dimension(WIDTH, 26));
		Box panelPass = Box.createVerticalBox();
		lblPass = new JLabel("Mật khẩu:");
		txtPass = new JTextField(25);
		txtPass.setPreferredSize(new Dimension(WIDTH, 26));
		loginBtn = new JButton("Đăng nhập");
		loginBtn.setPreferredSize(new Dimension(200, 34));
		
		panelName.add(Box.createVerticalStrut(20));
		panelName.add(lblName);
		panelName.add(Box.createVerticalStrut(10));
		panelName.add(txtName);
		panelPass.add(lblPass);
		panelPass.add(Box.createVerticalStrut(10));
		panelPass.add(txtPass);
		
		pN.add(lblTitel);
		pC.add(panelName);
		pC.add(panelPass);
		pS.add(loginBtn);
		
		add(pN, BorderLayout.NORTH);
		add(pC, BorderLayout.CENTER);
		add(pS, BorderLayout.SOUTH);
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new Login().setVisible(true);
	}

}