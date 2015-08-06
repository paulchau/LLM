package mainGUI;

import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextPane;
import javax.swing.ScrollPaneConstants;
import javax.swing.border.EmptyBorder;

import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.dao.ImplLTLDao;

@SuppressWarnings("serial")
public class VerifyFrame extends JFrame {

	private JPanel contentPane;
	private JTextPane textPane;
	private SimulateFrame sf;
	private ImplLTLDao dao = new ImplLTLDao();
	int id = -1;// iterator
	int rid = -1;// iterator
	int ite = -1; // iterator
	int itr = -1;// iterator
	private static final Pattern NO_ERROR_PATTERN = Pattern
			.compile("State-vector \\d+ byte, depth reached \\d+, errors: 0");

	/**
	 * Create the frame.
	 */
	public VerifyFrame() {
		setTitle("Verification Result");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 741, 482);
		GraphicsDevice gd = GraphicsEnvironment.getLocalGraphicsEnvironment()
				.getDefaultScreenDevice();
		int width = gd.getDisplayMode().getWidth();
		int height = gd.getDisplayMode().getHeight();
		this.setLocation(width * 20 / 100, height * 15 / 100);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		scrollPane.setBounds(0, 0, 725, 444);
		contentPane.add(scrollPane);

		textPane = new JTextPane();
		textPane.setContentType("text/html");
		textPane.setEditable(false);
		scrollPane.setViewportView(textPane);
	}

	public void setText(String text) {
		textPane.setText(text);
		textPane.setCaretPosition(0);
	}

	public String getText() {
		return textPane.getText();
	}

	protected void Verifier(ArrayList<LTLDefinition> ltlList, String pml,
			String rule, String fileDir, String filePath, String fileRoot,
			ArrayList<String> files) throws IOException {
		LTLDefinition chooseLTL = null;
		ltlList = dao.getAllLTLDefinition();
		if (ltlList.size() != 0) {
			LTLDefinition[] temp = new LTLDefinition[ltlList.size()];
			for (int i = 0; i < ltlList.size(); i++) {
				temp[i] = ltlList.get(i);
			}
			chooseLTL = (LTLDefinition) JOptionPane.showInputDialog(null,
					"Choose the LTL to test. Press cancel if not required.",
					"Add LTL to model", JOptionPane.QUESTION_MESSAGE, null,
					temp, temp[0]);
		}
		if (!(chooseLTL == null)) {
			ArrayList<String> var = new ArrayList<String>();
			ArrayList<String> role = new ArrayList<String>();
			for (String s : pml.split("\\n")) {
				if (s.contains("LN_EVENT")) {
					var.add(s.substring(9, s.length() - 2));
				} else if (s.contains("RolePlayer(")) {
					String rolePlayers = s.substring(11, s.length() - 2);
					for (String ss : rolePlayers.split(",")) {
						role.add(ss.trim());
					}
				}
			}
			String[] choice = new String[var.size()];
			for (int i = 0; i < var.size(); i++) {
				choice[i] = var.get(i);
			}
			String[] roles = new String[role.size()];
			for (int i = 0; i < role.size(); i++) {
				roles[i] = role.get(i);
			}
			JOptionPane paramLTL = new JOptionPane();
			JPanel content = new JPanel();
			paramLTL.setMessageType(JOptionPane.QUESTION_MESSAGE);
			paramLTL.setOptionType(JOptionPane.OK_CANCEL_OPTION);
			String formula = "";
			String[] descText = chooseLTL.getDescription().split(" ");
			String[] formulaText = chooseLTL.getFormula().split(" ");
			for (String temp : descText) {
				if (temp.contains("@")) {
					id++;
				} else if (temp.contains("#")) {
					rid++;
				}
			}
			ArrayList<JComboBox<String>> selVar = new ArrayList<JComboBox<String>>();
			ArrayList<JComboBox<String>> selRole = new ArrayList<JComboBox<String>>();
			final ArrayList<String> chosenVar = new ArrayList<String>();
			final ArrayList<String> chosenRole = new ArrayList<String>();
			ite = 0;
			itr = 0;
			for (String temp : descText) {
				if (temp.contains("@")) {
					ite++;
					JComboBox<String> box = new JComboBox<String>(choice);
					selVar.add(box);
					chosenVar.add((String) box.getSelectedItem());
					final int no = selVar.size() - 1;
					selVar.get(selVar.size() - 1).addItemListener(
							new ItemListener() {
								@Override
								public void itemStateChanged(ItemEvent event) {
									if (event.getStateChange() == ItemEvent.SELECTED) {
										chosenVar.set(no,
												(String) event.getItem());
									}
								}
							});
					content.add(selVar.get(selVar.size() - 1));
				} else if (temp.contains("#")) {
					itr++;
					JComboBox<String> box = new JComboBox<String>(roles);
					selRole.add(box);
					chosenRole.add((String) box.getSelectedItem());
					final int num = selRole.size() - 1;
					selRole.get(selRole.size() - 1).addItemListener(
							new ItemListener() {
								@Override
								public void itemStateChanged(ItemEvent event) {
									if (event.getStateChange() == ItemEvent.SELECTED) {
										chosenRole.set(num,
												(String) event.getItem());
									}
								}
							});
					content.add(selRole.get(selRole.size() - 1));
				} else {
					content.add(new JLabel(temp));
				}
			}
			chooseLTL.setFormula(formula);
			paramLTL.setMessage(content);
			JDialog dialog = paramLTL.createDialog(null,
					"Select variables in the LTL");
			dialog.setVisible(true);
			int reply = ((Integer) paramLTL.getValue()).intValue();
			if (reply == JOptionPane.CANCEL_OPTION) {
				chooseLTL = null;
			} else {
				int it = -1;
				int ir = -1;
				for (String temp : formulaText) {
					if (temp.contains("@")) {
						it++;
						formula = formula + " " + chosenVar.get(it);
					} else if (temp.contains("#")) {
						ir++;
						formula = formula + " " + chosenRole.get(ir);
					} else {
						formula = formula + " " + temp;
					}
				}
				System.out.println(formula);
				chooseLTL.setFormula(formula);
			}
		}
		String output = "";
		File des;
		File file = new File(fileDir);
		File file2 = new File(filePath);
		File file3 = new File("./test.pml");
		File dest;
		for (String s : files) {
			dest = new File("./" + s);
			try {
				Files.delete(dest.toPath());
			} catch (IOException e1) {
				// JOptionPane.showMessageDialog(frmLpromela,
				// "Error! Fail in removing temp content.");
			}
		}
		try {
			Files.delete(new File("./test.pml").toPath());
		} catch (Exception ee) {
			// JOptionPane.showMessageDialog(null, ee.getMessage());
		}
		try {
			BufferedWriter bw = new BufferedWriter(new FileWriter(file));
			bw.write(pml);
			bw.close();
			BufferedWriter bw2 = new BufferedWriter(new FileWriter(file2));
			bw2.write(rule);
			bw2.close();
			BufferedWriter bw3 = new BufferedWriter(new FileWriter(file3));
			String input = pml;
			if (!(chooseLTL == null)) {
				input += "ltl ltlCheck {" + chooseLTL.getFormula() + "}";
				System.out.println(chooseLTL.getFormula());
			}
			bw3.write(input);
			bw3.close();
		} catch (IOException e1) {
			JOptionPane.showMessageDialog(null,
					"Error! Fail to save the content. " + e1.getMessage());
		}

		for (String s : files) {
			File sor = new File(fileRoot + s);
			des = new File("./" + s);
			System.out.println(s);
			try {
				Files.copy(sor.toPath(), des.toPath());
			} catch (Exception ee) {
				Files.delete(des.toPath());
				Files.copy(sor.toPath(), des.toPath());
			}
		}
		String command1 = "./spin -a \"./test.pml\"";
		Runtime runtime = Runtime.getRuntime();
		Process proc1 = runtime.exec(command1);
		System.out.println("Start spin -a");
		try {
			proc1.waitFor();
		} catch (InterruptedException e) {
			System.out.println("proc1 error");
		}
		System.out.println("Finish spin -a");
		proc1.getOutputStream().close();
		String command2 = "cc -o pan pan.c";
		Runtime runtime2 = Runtime.getRuntime();
		Process proc2 = runtime2.exec(command2);
		System.out.println("Start cc");
		try {
			proc2.waitFor();
		} catch (InterruptedException e) {
			System.out.println("proc2 error");
		}
		proc2.getOutputStream().close();
		System.out.println("Finish cc");
		String command3 = "./pan -a -m50000";
		Runtime runtime3 = Runtime.getRuntime();
		Process proc3 = runtime3.exec(command3);
		System.out.println("Start ./pan");
		System.out.println("Verify");
		output = "Verification Result: <br>";
		String line = "";
		BufferedReader stdout = new BufferedReader(new InputStreamReader(
				proc3.getInputStream()));
		boolean found = false;
		while ((line = stdout.readLine()) != null) {
			Matcher matcher = NO_ERROR_PATTERN.matcher(line);
			if (matcher.find()) {
				found = true;
			}
			output = output + line + "<br>";
		}
		if (!found) {
			JOptionPane.showMessageDialog(null, "Errors found");
			sf = new SimulateFrame();
			sf.setVisible(true);
			String error = "";
			String command0 = "./spin -t \"./test.pml\"";
			Runtime runtime0 = Runtime.getRuntime();
			Process proc0 = runtime0.exec(command0);
			System.out.println("trail");
			error = "Output: \n";
			BufferedReader stdout1 = new BufferedReader(new InputStreamReader(
					proc0.getInputStream()));
			while ((line = stdout1.readLine()) != null) {
				error = error + line + "\n";
			}
			stdout1.close();
			error = error + "\n Error: \n";
			BufferedReader stderr1 = new BufferedReader(new InputStreamReader(
					proc0.getErrorStream()));
			while ((line = stderr1.readLine()) != null) {
				error = error + line + "\n";
			}
			stderr1.close();
			System.out.println("Done");

			proc0.getOutputStream().close();
			sf.setText(error);
		} else {
			JOptionPane.showMessageDialog(null, "No Errors found ");
		}
		stdout.close();
		output = output + "<br> Error: <br>";
		BufferedReader stderr = new BufferedReader(new InputStreamReader(
				proc3.getErrorStream()));
		while ((line = stderr.readLine()) != null) {
			output = output + line + "<br>";
		}
		stderr.close();
		System.out.println("Done");

		proc3.getOutputStream().close();
		setText(output);
	}
}
