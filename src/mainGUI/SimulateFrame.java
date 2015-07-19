package mainGUI;

import java.awt.BorderLayout;
import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextPane;
import javax.swing.ScrollPaneConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JLabel;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.util.ArrayList;

@SuppressWarnings("serial")
public class SimulateFrame extends JFrame {

	private JPanel contentPane;
	private JTextPane textPane;
	private JPanel panel;
	private JLabel lblNewLabel;
	private JButton btnNewButton;
	private JTextField textField;

	/**
	 * Create the frame.
	 */
	public SimulateFrame() {
		setTitle("Simluation Result");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 741, 482);
		GraphicsDevice gd = GraphicsEnvironment.getLocalGraphicsEnvironment()
				.getDefaultScreenDevice();
		int width = gd.getDisplayMode().getWidth();
		int height = gd.getDisplayMode().getHeight();
		this.setLocation(width * 51 / 100, height * 15 / 100);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		scrollPane.setBounds(0, 0, 725, 444);
		contentPane.add(scrollPane);

		textPane = new JTextPane();
		textPane.setEditable(false);
		scrollPane.setViewportView(textPane);

		panel = new JPanel();
		scrollPane.setColumnHeaderView(panel);

		lblNewLabel = new JLabel("Trial mode: ");
		panel.add(lblNewLabel);

		textField = new JTextField();
		panel.add(textField);
		textField.setColumns(10);

		btnNewButton = new JButton("Run");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				String output = "";
				String command1 = "spin -n" + textField.getText()
						+ " \"./test.pml\"";
				System.out.println(command1);
				Runtime runtime = Runtime.getRuntime();
				Process proc1;
				try {
					proc1 = runtime.exec(command1);

					System.out.println("proc1");
					output = "Output: \n";
					String line = "";
					BufferedReader stdout = new BufferedReader(
							new InputStreamReader(proc1.getInputStream()));
					while ((line = stdout.readLine()) != null) {
						output = output + line + "\n";
					}
					stdout.close();
					output = output + "\n Error: \n";
					BufferedReader stderr = new BufferedReader(
							new InputStreamReader(proc1.getErrorStream()));
					while ((line = stderr.readLine()) != null) {
						output = output + line + "\n";
					}
					stderr.close();
					System.out.println("Done");

					proc1.getOutputStream().close();

					setText(output);
				} catch (IOException e) {
					JOptionPane.showMessageDialog(null,
							"Error! Fail to simulate the content.");
				}
			}
		});
		panel.add(btnNewButton);
	}

	public void setText(String text) {
		textPane.setText(text);
		textPane.setCaretPosition(0);
	}

	protected void Simulator(String pml, String fileRoot,
			ArrayList<String> files) throws IOException {
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
		bw.write(pml);
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

		setText(output);
	}

}
