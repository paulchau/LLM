package mainGUI;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.ScrollPaneConstants;

import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.dao.ImplLTLDao;

@SuppressWarnings("serial")
public class LTLSetting extends JFrame {

	private JPanel newPanel;
	private LTLmang manPanel;
	private JDialog dialog;

	public LTLSetting() {
		setTitle("LTL Management System");
		this.setSize(819, 797);
		setLocationRelativeTo(null);
		getContentPane().setLayout(null);

		JSplitPane splitPane = new JSplitPane(JSplitPane.VERTICAL_SPLIT);
		splitPane.setBounds(10, 11, 781, 737);
		splitPane.setOrientation(JSplitPane.VERTICAL_SPLIT);
		splitPane.setDividerLocation(300);
		splitPane.setDividerSize(10);
		getContentPane().add(splitPane);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		splitPane.setRightComponent(scrollPane);
		manPanel = new LTLmang();
		newPanel = new newLTL(manPanel);
		scrollPane.setViewportView(manPanel);
		splitPane.setLeftComponent(newPanel);
		newPanel.setLayout(null);
	}

	public void close() {
		dialog.setVisible(false);
		this.dispose();
	}

	public void refresh() {
		this.refresh();
	}
}

@SuppressWarnings("serial")
class newLTL extends JPanel {
	private Pattern variablePattern = Pattern.compile("@V\\d+@");
	private JTextField name;
	private JTextField formula;
	private JTextField description;
	private ImplLTLDao dao = new ImplLTLDao();

	public newLTL(final LTLmang panel) {
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
				boolean valid = checkLTLInput(description.getText(),
						formula.getText());
				if (valid) {
					dao.addLTLForlumaPrototype(description.getText(),
							formula.getText(), name.getText());
					JOptionPane.showMessageDialog(null, "New LTL added");
					panel.reload();
					description.setText("");
					name.setText("");
					formula.setText("");
				} else {
					JOptionPane
							.showMessageDialog(null,
									"Invalid input. May need to change the V inside variables to something else");
				}
			}
		});
		btnAddNewLtl.setBounds(500, 170, 120, 30);
		this.add(btnAddNewLtl);

		JButton btnHelp = new JButton("Help");
		btnHelp.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				JOptionPane
						.showMessageDialog(null,
								"Please remember to add blanket to standardise the LTL formula!");
			}
		});
		btnHelp.setBounds(620, 170, 120, 30);
		this.add(btnHelp);

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

		final JButton bt_variable = new JButton("@V2@");
		bt_variable.setToolTipText("define replaceable variables, e.g. @V2@");
		bt_variable.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(bt_variable);
			}
		});
		bt_variable.setBounds(180, 261, 61, 25);
		this.add(bt_variable);

		final JButton isx = new JButton("IS_X( @V2@ )");
		isx.setToolTipText("replaceable variables, e.g. @V2@, is executed");
		isx.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(isx);
			}
		});
		isx.setBounds(240, 261, 70, 25);
		this.add(isx);

		final JButton isr = new JButton("IS_R( @V2@ , #V2# )");
		isr.setToolTipText("replaceable variables, e.g. @V@, offer the right to execute");
		isr.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(isr);
			}
		});
		isr.setBounds(307, 261, 70, 25);
		this.add(isr);

		final JButton iso = new JButton("IS_O( @V2@ , #V2# )");
		iso.setToolTipText("replaceable variables, e.g. @V@, is obliged");
		iso.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(iso);
			}
		});
		iso.setBounds(373, 261, 70, 25);
		this.add(iso);

		final JButton isp = new JButton("IS_P( @V2@ , #V2# )");
		isp.setToolTipText("replaceable variables, e.g. @V@, is prohibited");
		isp.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				showButtonSymbol(isp);
			}
		});
		isp.setBounds(440, 261, 70, 25);
		this.add(isp);

	}

	private void showButtonSymbol(JButton button) {
		String curentString = formula.getText() == null ? "" : formula
				.getText() + " " + button.getText();
		String des = "";
		if (button.getText().contains("@V2@")) {
			if (button.getText().equals("@V2@")) {
				des = description.getText() == null ? "" : description
						.getText() + " Learning Event @V2@ ";
			} else if (button.getText().equals("IS_X( @V2@ , #V2# )")) {
				des = description.getText() == null ? ""
						: description.getText()
								+ " Learning Event @V2@ of Role Player #V2# is executed";
			} else if (button.getText().equals("IS_R( @V2@ , #V2# )")) {
				des = description.getText() == null ? ""
						: description.getText()
								+ " Learning Event @V2@ of Role Player #V2# has right to be executed";
			} else if (button.getText().equals("IS_O( @V2@ , #V2# )")) {
				des = description.getText() == null ? "" : description
						.getText()
						+ " Learning Event @V2@ of Role Player #V2# is obliged";
			} else if (button.getText().equals("IS_P( @V2@ , #V2# )")) {
				des = description.getText() == null ? ""
						: description.getText()
								+ " Learning Event @V2@ of Role Player #V2# is prohibited";
			}
		} else {
			des = description.getText() == null ? "" : description.getText()
					+ " " + button.getToolTipText();
		}
		description.setText("");
		description.setText(des);
		description.requestFocus();
		formula.setText("");
		formula.setText(curentString);
		formula.requestFocus();
	}

	/* From Jim */
	private boolean checkLTLInput(String description, String formula) {
		boolean result = false;
		if (description == null || formula == null) {
			return result;
		} else {
			Matcher matcher = variablePattern.matcher(description);
			while (matcher.find()) {
				result = !result;
				break;
			}
			if (!result) {
				return result;
			} else {
				matcher = variablePattern.matcher(formula);
				while (matcher.find()) {
					result = !result;
					break;
				}
				return !result;
			}
		}
	}
}

@SuppressWarnings("serial")
class LTLmang extends JPanel {
	private ImplLTLDao dao = new ImplLTLDao();

	public LTLmang() {
		loadMang();
	}

	public void loadMang() {
		this.setVisible(true);
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
			itemPanel = new LTLItemPanel(definition, this);
			this.add(itemPanel);
		}

		this.validate();
	}

	public void reload() {
		this.removeAll();
		this.repaint();
		loadMang();
	}
}

@SuppressWarnings("serial")
class LTLItemPanel extends JPanel {
	private int id;
	private ImplLTLDao dao = new ImplLTLDao();

	public LTLItemPanel(LTLDefinition definition, final LTLmang upper) {
		setLayout(null);
		// without this line, the scroll bar will never show.
		this.setPreferredSize(new Dimension(750, 120));

		JLabel label_description = new JLabel("Description");
		label_description.setFont(new Font("Arial", Font.PLAIN, 16));
		label_description.setBounds(10, 24, 84, 28);
		add(label_description);

		JTextArea area_description = new JTextArea();
		area_description.setBackground(new Color(230, 230, 250));
		area_description.setEditable(false);
		area_description.setFont(new Font("Arial", Font.PLAIN, 14));
		area_description.setLineWrap(true);
		area_description.setText(definition.getDescription());

		JScrollPane scrollPane = new JScrollPane(area_description);
		scrollPane.setBounds(93, 10, 550, 60);
		add(scrollPane);

		JLabel label_formula = new JLabel("Formula");
		label_formula.setFont(new Font("Arial", Font.PLAIN, 16));
		label_formula.setBounds(10, 80, 84, 28);
		add(label_formula);

		JTextField field_formula = new JTextField();
		field_formula.setBackground(new Color(230, 230, 250));
		field_formula.setEditable(false);
		field_formula.setFont(new Font("Arial", Font.PLAIN, 14));
		field_formula.setColumns(10);
		field_formula.setBounds(93, 80, 431, 28);
		field_formula.setText(definition.getFormula());
		add(field_formula);

		JLabel label_nickname = new JLabel("Nickname");
		label_nickname.setFont(new Font("Arial", Font.PLAIN, 16));
		label_nickname.setBounds(534, 80, 70, 28);
		add(label_nickname);

		JTextField field_nickname = new JTextField();
		field_nickname.setBackground(new Color(230, 230, 250));
		field_nickname.setFont(new Font("Arial", Font.PLAIN, 14));
		field_nickname.setEditable(false);
		field_nickname.setColumns(10);
		field_nickname.setBounds(611, 80, 129, 28);
		field_nickname.setText(definition.getNickname());
		add(field_nickname);
		id = definition.getId();

		JButton btnAddNewLtl = new JButton("Delete");
		btnAddNewLtl.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if (JOptionPane.showConfirmDialog(null,
						"Are you sure you need to delete this template?",
						"Delete..", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
					dao.deleteLTL(id);
					upper.reload();
				} else {
					JOptionPane.showMessageDialog(null, "Not removed");
				}
			}
		});
		btnAddNewLtl.setBounds(653, 10, 87, 60);
		this.add(btnAddNewLtl);

	}
}