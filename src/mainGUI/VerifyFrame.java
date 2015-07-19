package mainGUI;

import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectOutputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;
import javax.swing.JTextPane;

import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.dao.ImplLTLDao;

@SuppressWarnings("serial")
public class VerifyFrame extends JFrame {

	private JPanel contentPane;
	private JTextPane textPane;
	private SimulateFrame sf;
	private ImplLTLDao dao = new ImplLTLDao();
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
			for (String s : pml.split("\\n")) {
				if (s.contains("LN_EVENT")) {
					var.add(s.substring(9, s.length() - 2));
				}
			}
			String[] choice = new String[var.size()];
			for (int i = 0; i < var.size(); i++) {
				choice[i] = var.get(i);
			}
			int id = 0;
			String formula = "";
			String[] text = chooseLTL.getFormula().split(" ");
			for (String temp : text) {
				if (temp.contains("@")) {
					id++;
					String input = (String) JOptionPane.showInputDialog(null,
							chooseLTL.getDescription(),
							"Choose variable " + id,
							JOptionPane.QUESTION_MESSAGE, null, choice,
							choice[0]);
					System.out.println(input);
					while (input == null) {
						input = (String) JOptionPane.showInputDialog(null,
								chooseLTL.getDescription(), "Choose variable "
										+ id, JOptionPane.QUESTION_MESSAGE,
								null, choice, choice[0]);
					}
					formula = formula + " " + input;
				} else {
					formula = formula + " " + temp;
				}
				System.out.println("formula: " + formula);
			}
			chooseLTL.setFormula(formula);
		}
		if (chooseLTL != null) {
			System.out.println(chooseLTL.getFormula());
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
			JOptionPane.showMessageDialog(null, ee.getMessage());
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
			}
			bw3.write(input);
			bw3.close();
			FileOutputStream fos = new FileOutputStream(fileRoot + "file.ltl");
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(ltlList);
			oos.close();
			fos.close();
			JOptionPane.showMessageDialog(null, "File saved.");
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
		String command1 = "./spin -run -m50000 \"./test.pml\"";
		Runtime runtime = Runtime.getRuntime();
		Process proc1 = runtime.exec(command1);
		try {
			proc1.waitFor();
		} catch (InterruptedException e) {
			System.out.println("proc1 error");
		}
		proc1.getOutputStream().close();

		System.out.println("Verify");
		output = "Verification Result: <br>";
		String line = "";
		BufferedReader stdout = new BufferedReader(new InputStreamReader(
				proc1.getInputStream()));
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
				proc1.getErrorStream()));
		while ((line = stderr.readLine()) != null) {
			output = output + line + "<br>";
		}
		stderr.close();
		System.out.println("Done");

		proc1.getOutputStream().close();
		setText(output);
	}
}
