package mainGUI;

import java.awt.EventQueue;
import java.awt.FileDialog;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;

import ncl.b1037041.LTL.entites.LPromelaModel;
import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.dao.ImplLTLDao;

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
						if (!codes.contains("/*#include")) {
							String file2name = codes.substring(10,
									codes.indexOf(".h") + 2);
							files.add(file2name);
							if ((file2name.indexOf("Operation") == -1)
									&& (file2name.indexOf("setting") == -1)) {
								filePath = filePath + file2name;
								File file2 = new File(filePath);
								FileInputStream fis2 = new FileInputStream(
										file2);
								BufferedReader br2 = new BufferedReader(
										new InputStreamReader(fis2));
								while ((rules = br2.readLine()) != null) {
									rule.setText(rule.getText() + "\n" + rules);
								}
								rule.setCaretPosition(0);
								br2.close();
								fis2.close();
							}
						}
					}

				}
				pml.setCaretPosition(0);
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

		JMenuItem mntmConstructLtl = new JMenuItem("Construct LTL template");
		mntmConstructLtl.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				LTLSetting ls = new LTLSetting();
				ls.setVisible(true);
				ltlList = dao.getAllLTLDefinition();
			}
		});
		mnLtl.add(mntmConstructLtl);

		JMenuItem mntmAddLtl = new JMenuItem("View LTL template");
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
					sf.Simulator(pml.getText(), fileRoot, files);
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
					vf.Verifier(ltlList, pml.getText(), rule.getText(),
							fileDir, filePath, fileRoot, files);
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
					sf.Simulator(pml.getText(), fileRoot, files);
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
					vf.Verifier(ltlList, pml.getText(), rule.getText(),
							fileDir, filePath, fileRoot, files);
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
