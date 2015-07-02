package mainGUI;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.ScrollPaneConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextPane;
import javax.swing.JLabel;

import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JTextField;
import javax.swing.JButton;

import ncl.b1037041.LTL.entites.LTLDefinition;

public class LTLSetting extends JFrame {

	private JFrame frame;
	private JPanel contentPane;
	private JDialog dialog;
	private JTextField name;
	private JTextField formula;
	private JTextField description;
	private LTLDefinition nLTL;

	public LTLSetting(JFrame frame) {
		this.frame = frame;
	}

	private JPanel mainPanel() {
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		JLabel lblDescription = new JLabel("Description:");
		lblDescription.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblDescription.setBounds(21, 42, 109, 42);
		contentPane.add(lblDescription);

		JLabel lblFormula = new JLabel("Formula:");
		lblFormula.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblFormula.setBounds(21, 156, 109, 42);
		contentPane.add(lblFormula);

		name = new JTextField();
		name.setBounds(162, 110, 313, 33);
		contentPane.add(name);
		name.setColumns(10);

		JLabel lblLtlLabel = new JLabel("Name of the LTL:");
		lblLtlLabel.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblLtlLabel.setBounds(21, 103, 131, 42);
		contentPane.add(lblLtlLabel);

		formula = new JTextField();
		formula.setColumns(10);
		formula.setBounds(162, 163, 313, 33);
		contentPane.add(formula);

		JButton btnAddNewLtl = new JButton("Add New LTL");
		btnAddNewLtl.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if ((!formula.getText().isEmpty())
						&& (!description.getText().isEmpty())
						&& (!name.getText().isEmpty())) {
					nLTL = new LTLDefinition(formula.getText(), description
							.getText(), name.getText());
					JOptionPane.showMessageDialog(null, "New LTL added");
					close();
				} else {
					JOptionPane
							.showMessageDialog(null,
									"Empty fields found. Please fill in all the information");
				}
			}
		});
		btnAddNewLtl.setBounds(500, 167, 100, 40);
		contentPane.add(btnAddNewLtl);

		final JButton bt_not = new JButton("!");
		bt_not.setToolTipText("not");
		bt_not.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_not);
			}
		});
		bt_not.setBounds(60, 236, 61, 25);
		getContentPane().add(bt_not);

		final JButton bt_and = new JButton("&&");
		bt_and.setToolTipText("and");
		bt_and.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				showButtonSymbol(bt_and);
			}
		});
		bt_and.setBounds(120, 236, 61, 25);
		getContentPane().add(bt_and);

		final JButton bt_or = new JButton("||");
		bt_or.setToolTipText("or");
		bt_or.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_or);
			}
		});
		bt_or.setBounds(180, 236, 61, 25);
		getContentPane().add(bt_or);

		final JButton bt_implies = new JButton("->");
		bt_implies.setToolTipText("implies");
		bt_implies.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_implies);
			}
		});
		bt_implies.setBounds(240, 236, 61, 25);
		getContentPane().add(bt_implies);

		final JButton bt_equivalent = new JButton("<->");
		bt_equivalent.setToolTipText("equivalent");
		bt_equivalent.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_equivalent);
			}
		});
		bt_equivalent.setBounds(300, 236, 61, 25);
		getContentPane().add(bt_equivalent);

		final JButton bt_always = new JButton("[]");
		bt_always.setToolTipText("always");
		bt_always.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_always);
			}
		});
		bt_always.setBounds(360, 236, 61, 25);
		getContentPane().add(bt_always);

		final JButton bt_eventually = new JButton("<>");
		bt_eventually.setToolTipText("eventually");
		bt_eventually.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_eventually);
			}
		});
		bt_eventually.setBounds(420, 236, 61, 25);
		getContentPane().add(bt_eventually);

		final JButton bt_until = new JButton("U");
		bt_until.setToolTipText("until");
		bt_until.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_until);
			}
		});
		bt_until.setBounds(480, 236, 61, 25);
		getContentPane().add(bt_until);

		final JButton bt_variable = new JButton("@V@");
		bt_variable.setToolTipText("define replaceable variables, e.g. @V2@");
		bt_variable.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_variable);
			}
		});
		bt_variable.setBounds(540, 236, 61, 25);
		getContentPane().add(bt_variable);

		description = new JTextField();
		description.setColumns(10);
		description.setBounds(162, 49, 313, 33);
		contentPane.add(description);
		return contentPane;
	}

	public void display() {
		dialog = new JDialog(frame, "Add LTL", true);
		dialog.setSize(692, 341);
		dialog.setDefaultCloseOperation(DISPOSE_ON_CLOSE);

		dialog.setContentPane(mainPanel());
		dialog.setLocationRelativeTo(frame);
		dialog.setVisible(true);
	}

	public void close() {
		dialog.setVisible(false);
		this.dispose();
	}

	private void showButtonSymbol(JButton button) {
		String curentString = formula.getText() == null ? "" : formula
				.getText() + button.getText();
		formula.setText("");
		formula.setText(curentString);
		formula.requestFocus();
	}

	public LTLDefinition getLTL() {
		System.out.println(nLTL);
		return nLTL;
	}

}
