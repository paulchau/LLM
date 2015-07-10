package mainGUI;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.GridLayout;

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
import java.util.Iterator;
import java.util.List;

import javax.swing.JTextField;
import javax.swing.JButton;

import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.dao.ImplLTLDao;

public class LTLSetting extends JFrame {

	private JFrame frame;
	private JPanel newPanel;
	private JPanel manPanel;
	private JDialog dialog;

	public LTLSetting(JFrame frame) {
		setTitle("LTL Management System");
		this.frame = frame;
		getContentPane().setLayout(null);
		this.setSize(680, 800);
		setLocationRelativeTo(null);

		JSplitPane splitPane = new JSplitPane(JSplitPane.VERTICAL_SPLIT);
		splitPane.setOrientation(JSplitPane.VERTICAL_SPLIT);
		splitPane.setBounds(0, 0, 650, 750);
		splitPane.setDividerLocation(300);
		splitPane.setDividerSize(10);
		getContentPane().add(splitPane);

		newPanel = new newLTL();
		manPanel = new LTLmang();

		JScrollPane scrollPane = new JScrollPane();
		scrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		scrollPane.add(manPanel);
		splitPane.setRightComponent(scrollPane);
		splitPane.setLeftComponent(newPanel);
		newPanel.setLayout(null);
	}

	public void close() {
		dialog.setVisible(false);
		this.dispose();
	}
}

class newLTL extends JPanel {
	private JTextField name;
	private JTextField formula;
	private JTextField description;
	private ImplLTLDao dao = new ImplLTLDao();

	public newLTL() {
		JLabel lblDescription = new JLabel("Description:");
		lblDescription.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblDescription.setBounds(21, 42, 109, 42);
		this.add(lblDescription);

		description = new JTextField();
		description.setColumns(10);
		description.setBounds(162, 49, 313, 33);
		this.add(description);

		JLabel lblFormula = new JLabel("Formula:");
		lblFormula.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblFormula.setBounds(21, 156, 109, 42);
		this.add(lblFormula);

		name = new JTextField();
		name.setBounds(162, 110, 313, 33);
		this.add(name);
		name.setColumns(10);

		JLabel lblLtlLabel = new JLabel("Name of the LTL:");
		lblLtlLabel.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblLtlLabel.setBounds(21, 103, 131, 42);
		this.add(lblLtlLabel);

		formula = new JTextField();
		formula.setColumns(10);
		formula.setBounds(162, 163, 313, 33);
		this.add(formula);

		JButton btnAddNewLtl = new JButton("Add New LTL");
		btnAddNewLtl.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if ((!formula.getText().isEmpty())
						&& (!description.getText().isEmpty())
						&& (!name.getText().isEmpty())) {
					dao.addLTLForlumaPrototype(description.getText(),
							formula.getText(), name.getText());
					JOptionPane.showMessageDialog(null, "New LTL added");
				} else {
					JOptionPane
							.showMessageDialog(null,
									"Empty fields found. Please fill in all the information");
				}
			}
		});
		btnAddNewLtl.setBounds(500, 167, 120, 20);
		this.add(btnAddNewLtl);

		final JButton bt_not = new JButton("!");
		bt_not.setToolTipText("not");
		bt_not.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_not);
			}
		});
		bt_not.setBounds(60, 236, 61, 25);
		this.add(bt_not);

		final JButton bt_and = new JButton("&&");
		bt_and.setToolTipText("and");
		bt_and.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				showButtonSymbol(bt_and);
			}
		});
		bt_and.setBounds(120, 236, 61, 25);
		this.add(bt_and);

		final JButton bt_or = new JButton("||");
		bt_or.setToolTipText("or");
		bt_or.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_or);
			}
		});
		bt_or.setBounds(180, 236, 61, 25);
		this.add(bt_or);

		final JButton bt_implies = new JButton("->");
		bt_implies.setToolTipText("implies");
		bt_implies.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_implies);
			}
		});
		bt_implies.setBounds(240, 236, 61, 25);
		this.add(bt_implies);

		final JButton bt_equivalent = new JButton("<->");
		bt_equivalent.setToolTipText("equivalent");
		bt_equivalent.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_equivalent);
			}
		});
		bt_equivalent.setBounds(300, 236, 61, 25);
		this.add(bt_equivalent);

		final JButton bt_always = new JButton("[]");
		bt_always.setToolTipText("always");
		bt_always.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_always);
			}
		});
		bt_always.setBounds(360, 236, 61, 25);
		this.add(bt_always);

		final JButton bt_eventually = new JButton("<>");
		bt_eventually.setToolTipText("eventually");
		bt_eventually.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_eventually);
			}
		});
		bt_eventually.setBounds(420, 236, 61, 25);
		this.add(bt_eventually);

		final JButton bt_until = new JButton("U");
		bt_until.setToolTipText("until");
		bt_until.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_until);
			}
		});
		bt_until.setBounds(480, 236, 61, 25);
		this.add(bt_until);

		final JButton bt_variable = new JButton("@V@");
		bt_variable.setToolTipText("define replaceable variables, e.g. @V2@");
		bt_variable.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_variable);
			}
		});
		bt_variable.setBounds(540, 236, 61, 25);
		this.add(bt_variable);

	}

	private void showButtonSymbol(JButton button) {
		String curentString = formula.getText() == null ? "" : formula
				.getText() + button.getText();
		String des = description.getText() == null ? "" : description.getText()
				+ " " + button.getToolTipText();
		description.setText("");
		description.setText(des);
		description.requestFocus();
		formula.setText("");
		formula.setText(curentString);
		formula.requestFocus();

	}
}

class LTLmang extends JPanel {
	private ImplLTLDao dao = new ImplLTLDao();

	public LTLmang() {
		this.removeAll();
		this.repaint();

		List<LTLDefinition> definitions = dao.getAllLTLDefinition();

		// one column
		setLayout(new GridLayout(definitions.size(), 1));

		Iterator<LTLDefinition> it = definitions.iterator();
		LTLDefinition definition = null;
		LTLItemPanel itemPanel = null;
		while (it.hasNext()) {
			definition = it.next();
			itemPanel = new LTLItemPanel(definition);
			this.add(itemPanel);
		}

		this.validate();
	}
}

class LTLItemPanel extends JPanel {
	private JTextField name;
	private JTextField formula;
	private JTextField description;
	private int id;
	private ImplLTLDao dao = new ImplLTLDao();

	public LTLItemPanel(LTLDefinition definition) {
		JLabel lblDescription = new JLabel("Description:");
		lblDescription.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblDescription.setBounds(21, 42, 109, 42);
		this.add(lblDescription);

		description = new JTextField();
		description.setColumns(10);
		description.setBounds(162, 49, 313, 33);
		description.setText(definition.getDescription());
		this.add(description);

		JLabel lblFormula = new JLabel("Formula:");
		lblFormula.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblFormula.setBounds(21, 156, 109, 42);
		this.add(lblFormula);

		name = new JTextField();
		name.setBounds(162, 110, 313, 33);
		name.setText(definition.getNickname());
		this.add(name);
		name.setColumns(10);

		JLabel lblLtlLabel = new JLabel("Name of the LTL:");
		lblLtlLabel.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblLtlLabel.setBounds(21, 103, 131, 42);
		this.add(lblLtlLabel);

		formula = new JTextField();
		formula.setColumns(10);
		formula.setText(definition.getFormula());
		formula.setBounds(162, 163, 313, 33);
		this.add(formula);

		id = definition.getId();

		JButton btnAddNewLtl = new JButton("Delete");
		btnAddNewLtl.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if (JOptionPane.showConfirmDialog(null,
						"Are you sure you need to delete this template?",
						"Delete..", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
					dao.deleteLpm(id);
				} else {
					JOptionPane.showMessageDialog(null, "Not removed");
				}
			}
		});
		btnAddNewLtl.setBounds(500, 167, 120, 20);
		this.add(btnAddNewLtl);
	}
}