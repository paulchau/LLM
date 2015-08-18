/*The original code is made by Ching Hay CHAU (Paul)
 * 
 */
package mainGUI;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JOptionPane;
import javax.swing.JComboBox;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;
import javax.swing.JLabel;

import java.awt.Font;
import java.util.ArrayList;

import javax.swing.JTextPane;

import ncl.b1037041.LTL.entites.LTLDefinition;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.JButton;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

@SuppressWarnings("serial")
public class LTL_list extends JFrame {

	private JPanel contentPane;
	private ArrayList<LTLDefinition> ltlList;
	private JComboBox<LTLDefinition> comboBox;
	private JTextPane textPane;

	/**
	 * Create the frame.
	 */
	public LTL_list() {
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent arg0) {
				getList();
				dispose();
			}
		});
		setTitle("Stored LTL");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 646, 574);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		comboBox = new JComboBox<LTLDefinition>();
		comboBox.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				LTLDefinition item = (LTLDefinition) comboBox.getSelectedItem();
				textPane.setText("Name: " + item.getNickname()
						+ "<br>Formula: " + item.getFormula() + " <br><br> "
						+ "Description: " + item.getDescription());
			}
		});
		comboBox.setBounds(10, 58, 481, 23);
		contentPane.add(comboBox);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		scrollPane.setBounds(10, 105, 610, 420);
		contentPane.add(scrollPane);

		textPane = new JTextPane();
		textPane.setContentType("text/html");
		textPane.setEditable(false);
		scrollPane.setViewportView(textPane);

		JLabel lblChooseLtlFormula = new JLabel("Choose LTL Formula:");
		lblChooseLtlFormula.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblChooseLtlFormula.setBounds(208, 24, 175, 14);
		contentPane.add(lblChooseLtlFormula);

		JButton btnDelete = new JButton("Remove");
		btnDelete.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				if (JOptionPane.showConfirmDialog(getParent(),
						"Do you want to remove this LTL?", "Remove LTL..",
						JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
					ltlList.remove(comboBox.getSelectedItem());
				}
			}
		});
		btnDelete.setBounds(531, 58, 89, 23);
		contentPane.add(btnDelete);
	}

	public void setList(ArrayList<LTLDefinition> ltlList) {
		this.ltlList = ltlList;
		for (LTLDefinition l : ltlList) {
			comboBox.addItem(l);
		}
		comboBox.setSelectedItem(ltlList.get(0));
	}

	public ArrayList<LTLDefinition> getList() {
		return ltlList;
	}
}
