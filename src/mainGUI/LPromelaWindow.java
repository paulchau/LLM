package mainGUI;

import java.awt.EventQueue;
import java.awt.FileDialog;

import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.JScrollPane;

import java.io.*;
import java.nio.file.Files;
import java.util.ArrayList;

import javax.swing.ScrollPaneConstants;
import javax.swing.JLabel;

import ncl.b1037041.LTL.entites.LPromelaModel;
import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.dao.ImplLTLDao;

import java.awt.Font;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class LPromelaWindow {

	private JFrame frmLpromela;
	protected String fileDir = "";
	protected String filePath = "";
	protected String fileRoot = "";
	private String codes = "";
	private String rules = "";
	private JTextArea pml;
	private VerifyFrame vf;
	private SimulateFrame sf;
	private JTextArea rule;
	private ArrayList<String> files = new ArrayList<String>();
	private ArrayList<LTLDefinition> ltlList = new ArrayList<LTLDefinition>();
	private ImplLTLDao dao = new ImplLTLDao();

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					LPromelaWindow window = new LPromelaWindow();
					window.frmLpromela.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public LPromelaWindow() {
		initialize();
	}

	private String Simulator() throws IOException {
		String output = "";
		File des;
		for (String s : files) {
			File sor = new File(fileRoot + s);
			des = new File("./" + s);
			try {
				Files.copy(sor.toPath(), des.toPath());
			} catch (Exception ee) {
				Files.delete(des.toPath());
				Files.copy(sor.toPath(), des.toPath());
			}
		}
		File temp = new File("./test.pml");
		BufferedWriter bw = new BufferedWriter(new FileWriter(temp));
		bw.write(pml.getText());
		bw.close();
		String command1 = "./spin \"./test.pml\"";
		Runtime runtime = Runtime.getRuntime();
		Process proc1 = runtime.exec(command1);
		System.out.println("proc1");
		output = "Output: \n";
		String line = "";
		BufferedReader stdout = new BufferedReader(new InputStreamReader(
				proc1.getInputStream()));
		while ((line = stdout.readLine()) != null) {
			output = output + line + "\n";
		}
		stdout.close();
		output = output + "\n Error: \n";
		BufferedReader stderr = new BufferedReader(new InputStreamReader(
				proc1.getErrorStream()));
		while ((line = stderr.readLine()) != null) {
			output = output + line + "\n";
		}
		stderr.close();
		System.out.println("Done");

		proc1.getOutputStream().close();

		return output;
	}

	private String Verifier() throws IOException {
		LTLDefinition chooseLTL = null;
		if (ltlList.size() != 0) {
			LTLDefinition[] temp = new LTLDefinition[ltlList.size()];
			for (int i = 0; i < ltlList.size(); i++) {
				temp[i] = ltlList.get(i);
			}
			chooseLTL = (LTLDefinition) JOptionPane.showInputDialog(
					frmLpromela,
					"Choose the LTL to test. Press cancel if not required.",
					"Add LTL to model", JOptionPane.QUESTION_MESSAGE, null,
					temp, temp[0]);
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
			JOptionPane.showMessageDialog(frmLpromela, ee.getMessage());
		}
		try {
			BufferedWriter bw = new BufferedWriter(new FileWriter(file));
			bw.write(pml.getText());
			bw.close();
			BufferedWriter bw2 = new BufferedWriter(new FileWriter(file2));
			bw2.write(rule.getText());
			bw2.close();
			BufferedWriter bw3 = new BufferedWriter(new FileWriter(file3));
			String input = pml.getText();
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
			JOptionPane.showMessageDialog(frmLpromela, "File saved.");
		} catch (IOException e1) {
			JOptionPane.showMessageDialog(frmLpromela,
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
		String command2 = "cc -o pan pan.c";
		String command3 = "./pan -a";
		Runtime runtime = Runtime.getRuntime();
		Process proc1 = runtime.exec(command1);
		try {
			proc1.waitFor();
		} catch (InterruptedException e) {
			System.out.println("proc1 error");
		}
		proc1.getOutputStream().close();
		Process proc2 = runtime.exec(command2);
		try {
			proc2.waitFor();
		} catch (InterruptedException e) {
			System.out.println("proc2 error");
		}
		proc2.getOutputStream().close();
		Process proc3 = runtime.exec(command3);
		proc3.getOutputStream().close();
		System.out.println("proc3");
		output = "Verification Result: <br>";
		String line = "";
		BufferedReader stdout = new BufferedReader(new InputStreamReader(
				proc3.getInputStream()));
		while ((line = stdout.readLine()) != null) {
			output = output + line + "<br>";
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

		proc1.getOutputStream().close();
		proc2.getOutputStream().close();
		proc3.getOutputStream().close();

		return output;
	}

	private void fileOpen() {
		files.clear();
		pml.setText("");
		rule.setText("");
		try {
			File del = new File("./pan.exe");
			Files.delete(del.toPath());
		} catch (Exception ee) {

		}
		final JFileChooser fc = new JFileChooser();
		int returnVal = -1;
		while (returnVal != 0) {
			returnVal = fc.showOpenDialog(null);
		}
		if (returnVal == JFileChooser.APPROVE_OPTION) {
			File file = fc.getSelectedFile();
			fileDir = file.getAbsolutePath();
			LPromelaModel lpm = new LPromelaModel();
			lpm.setFilePath(fileDir);
			lpm.setName(file.getName());
			dao.addLpm(lpm);
			filePath = file.getAbsolutePath().substring(0,
					fileDir.indexOf(file.getName(), 0));
			fileRoot = filePath;
			try {
				FileInputStream fis = new FileInputStream(file);
				BufferedReader br = new BufferedReader(new InputStreamReader(
						fis));
				while ((codes = br.readLine()) != null) {
					pml.setText(pml.getText() + "\n" + codes);
					if (codes.contains("#include")) {
						String file2name = codes.substring(10,
								codes.indexOf(".h") + 2);
						files.add(file2name);
						if ((file2name.indexOf("Operation") == -1)
								&& (file2name.indexOf("setting") == -1)) {
							filePath = filePath + file2name;
							File file2 = new File(filePath);
							FileInputStream fis2 = new FileInputStream(file2);
							BufferedReader br2 = new BufferedReader(
									new InputStreamReader(fis2));
							while ((rules = br2.readLine()) != null) {
								rule.setText(rule.getText() + "\n" + rules);
							}
							br2.close();
							fis2.close();
						}
					}
				}
				br.close();
				fis.close();
				files.add("bitvector.lpr");
				files.add("for.h");
			} catch (FileNotFoundException fne) {
				JOptionPane.showMessageDialog(frmLpromela,
						"Error! File not found.");
			} catch (IOException e1) {
				JOptionPane.showMessageDialog(frmLpromela,
						"Error! Fail to load the content.");
			}
			ltlList = dao.getAllLTLDefinition();
			try {
				File fileLTL = new File(fileRoot + "file.ltl");
				FileInputStream fis3 = new FileInputStream(fileLTL);
				ObjectInputStream ois = new ObjectInputStream(fis3);
				try {
					ltlList = (ArrayList<LTLDefinition>) ois.readObject();
				} catch (ClassNotFoundException e) {
					FileOutputStream fos = new FileOutputStream(fileLTL);
					ObjectOutputStream oos = new ObjectOutputStream(fos);
					oos.writeObject(ltlList);
					oos.close();
					fos.close();
				}
				ois.close();
				fis3.close();
			} catch (FileNotFoundException fne) {
				JOptionPane.showMessageDialog(frmLpromela,
						"Error! LTL File not found.");
			} catch (IOException e) {
				JOptionPane.showMessageDialog(frmLpromela,
						"Error! Fail to load the LTL.");
			}
		}
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmLpromela = new JFrame();
		frmLpromela.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent arg0) {
				File file = new File(fileDir);
				File file2 = new File(filePath);
				File des;
				for (String s : files) {
					if (s.equals(file.getName())) {
						des = new File("./test.pml");
					} else {
						des = new File("./" + s);
					}
					try {
						Files.delete(des.toPath());
					} catch (IOException e1) {
						JOptionPane.showMessageDialog(
								frmLpromela,
								"Error! Fail in removing temp content."
										+ e1.getMessage());
					}
				}
				try {
					BufferedWriter bw = new BufferedWriter(new FileWriter(file));
					bw.write(pml.getText());
					bw.close();
					BufferedWriter bw2 = new BufferedWriter(new FileWriter(
							file2));
					bw2.write(rule.getText());
					bw2.close();
					FileOutputStream fos = new FileOutputStream(fileRoot
							+ "file.ltl");
					ObjectOutputStream oos = new ObjectOutputStream(fos);
					oos.writeObject(ltlList);
					oos.close();
					fos.close();
					JOptionPane.showMessageDialog(frmLpromela, "File saved.");
				} catch (IOException e1) {
					JOptionPane.showMessageDialog(
							frmLpromela,
							"Error! Fail to save the content."
									+ e1.getMessage());
				}
			}

			@Override
			public void windowOpened(WindowEvent e) {
				if (JOptionPane.showConfirmDialog(frmLpromela,
						"Do you want to open an existing project?",
						"Select path..", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
					fileOpen();
				} else {
					FileDialog sf = new FileDialog(frmLpromela,
							"Select Path..", FileDialog.SAVE);
					while (sf.getDirectory() == null) {
						sf.setVisible(true);
					}
					fileDir = sf.getDirectory() + sf.getFile() + ".pml";
					filePath = sf.getDirectory() + sf.getFile() + "Rules.h";
					File file = new File(fileDir);
					File file2 = new File(filePath);
					File fileLTL = new File(fileRoot + "file.ltl");
					files.add(file2.getName());
					try {
						BufferedWriter bw = new BufferedWriter(new FileWriter(
								file));
						bw.write(pml.getText());
						bw.close();
						BufferedWriter bw2 = new BufferedWriter(new FileWriter(
								file2));
						bw2.write(rule.getText());
						bw2.close();
						FileOutputStream fos = new FileOutputStream(fileLTL);
						ObjectOutputStream oos = new ObjectOutputStream(fos);
						oos.writeObject(ltlList);
						oos.close();
						fos.close();
						JOptionPane.showMessageDialog(frmLpromela, "Path set.");
					} catch (IOException e1) {
						JOptionPane.showMessageDialog(frmLpromela,
								"Error! Fail to set the Path.");
						System.exit(0);
					}
				}
			}
		});
		frmLpromela.setTitle("LPromela");
		frmLpromela.setBounds(100, 100, 800, 600);
		frmLpromela.setLocationRelativeTo(null);
		frmLpromela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		JMenuBar menuBar = new JMenuBar();
		frmLpromela.setJMenuBar(menuBar);

		JMenu mnFile = new JMenu("File");
		menuBar.add(mnFile);

		JMenuItem mntmOpenModel = new JMenuItem("Open Model");
		mntmOpenModel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				fileOpen();
			}
		});
		mnFile.add(mntmOpenModel);

		JMenuItem mntmSave = new JMenuItem("Save");
		mntmSave.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (fileDir == "") {
					FileDialog sf = new FileDialog(frmLpromela, "Save as..",
							FileDialog.SAVE);
					sf.setVisible(true);
					fileDir = sf.getDirectory() + sf.getFile() + ".pml";
					filePath = sf.getDirectory() + sf.getFile() + "Rules.h";
				}
				File file = new File(fileDir);
				File file2 = new File(filePath);
				File des;
				for (String s : files) {
					des = new File("./" + s);
					try {
						Files.delete(des.toPath());
					} catch (IOException e1) {
						// JOptionPane.showMessageDialog(frmLpromela,
						// "Error! Fail in removing temp content.");
					}
				}
				try {
					Files.delete(new File("./test.pml").toPath());
					BufferedWriter bw = new BufferedWriter(new FileWriter(file));
					bw.write(pml.getText());
					bw.close();
					BufferedWriter bw2 = new BufferedWriter(new FileWriter(
							file2));
					bw2.write(rule.getText());
					bw2.close();
					FileOutputStream fos = new FileOutputStream(fileRoot
							+ "file.ltl");
					ObjectOutputStream oos = new ObjectOutputStream(fos);
					oos.writeObject(ltlList);
					oos.close();
					fos.close();
					JOptionPane.showMessageDialog(frmLpromela, "File saved.");
				} catch (IOException e1) {
					JOptionPane.showMessageDialog(
							frmLpromela,
							"Error! Fail to save the content. "
									+ e1.getMessage());
				}
			}
		});
		mnFile.add(mntmSave);

		JMenu mnLtl = new JMenu("LTL Manager");
		menuBar.add(mnLtl);

		JMenuItem mntmConstructLtl = new JMenuItem("Construct LTL");
		mntmConstructLtl.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				LTLSetting ls = new LTLSetting(frmLpromela);
				ls.display();
				try {
					LTLDefinition ltl = ls.getLTL();
					if (ltlList.isEmpty()) {
						ltl.setId(1);
					} else {
						ltl.setId(ltlList.size() + 1);
					}
					ltlList.add(ltl);
				} catch (NullPointerException npe) {
					JOptionPane.showMessageDialog(frmLpromela,
							"No New LTL formula added");
				}
			}
		});
		mnLtl.add(mntmConstructLtl);

		JMenuItem mntmAddLtl = new JMenuItem("View LTL");
		mntmAddLtl.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				LTL_list list = new LTL_list();
				list.setVisible(true);
				list.setList(ltlList);
				ltlList = list.getList();
			}
		});
		mnLtl.add(mntmAddLtl);

		JMenu mnSimulation = new JMenu("Simulation");
		menuBar.add(mnSimulation);

		JMenuItem mntmSimulate = new JMenuItem("Start simulate..");
		mntmSimulate.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					sf = new SimulateFrame();
					sf.setVisible(true);
					sf.setText(Simulator());
				} catch (IOException e1) {
					JOptionPane.showMessageDialog(frmLpromela,
							"Error! Fail to simluate the content.");
					sf.setText("Error: /n" + e1.getMessage());
				}
			}
		});
		mnSimulation.add(mntmSimulate);

		JMenu mnVerification = new JMenu("Verification");
		menuBar.add(mnVerification);

		JMenuItem mntmStartVerification = new JMenuItem("Start verification");
		mntmStartVerification.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					vf = new VerifyFrame();
					vf.setVisible(true);
					vf.setText("");
					vf.setText(Verifier());
				} catch (IOException e1) {
					JOptionPane.showMessageDialog(
							frmLpromela,
							"Error! Fail to verify the content."
									+ e1.getMessage());
					vf.setText("Error: /n" + e1.getMessage());
				}
			}
		});
		mnVerification.add(mntmStartVerification);

		JMenu mnHelp = new JMenu("Help");
		menuBar.add(mnHelp);

		JMenuItem mntmAboutLpromela = new JMenuItem("About LPromela");
		mntmAboutLpromela.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				HelpFrame hf = new HelpFrame();
				hf.setVisible(true);
			}
		});
		mnHelp.add(mntmAboutLpromela);
		frmLpromela.getContentPane().setLayout(null);

		JButton btnSimulate = new JButton("Simulate");
		btnSimulate.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					sf = new SimulateFrame();
					sf.setVisible(true);
					sf.setText(Simulator());
				} catch (IOException e1) {
					JOptionPane.showMessageDialog(frmLpromela,
							"Error! Fail to simluate the content.");
					sf.setText("Error: /n" + e1.getMessage());
				}
			}
		});
		btnSimulate.setBounds(27, 507, 89, 23);
		frmLpromela.getContentPane().add(btnSimulate);

		JButton btnVerify = new JButton("Verify");
		btnVerify.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					vf = new VerifyFrame();
					vf.setVisible(true);
					vf.setText(Verifier());
				} catch (IOException e1) {
					JOptionPane.showMessageDialog(frmLpromela,
							"Error! Fail to verify the content.");
					vf.setText("Error: /n" + e1.getMessage());
				}
			}
		});
		btnVerify.setBounds(303, 507, 89, 23);
		frmLpromela.getContentPane().add(btnVerify);

		JScrollPane codingPane = new JScrollPane();
		codingPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		codingPane.setBounds(27, 21, 365, 468);
		frmLpromela.getContentPane().add(codingPane);

		pml = new JTextArea();
		codingPane.setViewportView(pml);

		JScrollPane resultPane = new JScrollPane();
		resultPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		resultPane.setBounds(418, 21, 356, 468);
		frmLpromela.getContentPane().add(resultPane);

		rule = new JTextArea();
		resultPane.setViewportView(rule);

		JLabel lblLpromela = new JLabel("LPromela");
		lblLpromela.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblLpromela.setBounds(27, 0, 89, 25);
		frmLpromela.getContentPane().add(lblLpromela);

		JLabel lblRules = new JLabel("Rules");
		lblRules.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblRules.setBounds(418, 0, 89, 25);
		frmLpromela.getContentPane().add(lblRules);
	}

}
