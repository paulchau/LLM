package mainGUI;

import java.awt.Font;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

@SuppressWarnings("serial")
public class HelpFrame extends JFrame {

	private JPanel contentPane;

	/**
	 * Create the frame.
	 */
	public HelpFrame() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setTitle("About LPromela");
		setBounds(100, 100, 587, 313);

		this.contentPane = new JPanel();
		// "null" represents Absolute layout
		this.contentPane.setLayout(null);
		this.contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		this.setContentPane(this.contentPane);

		JLabel label_Version = new JLabel("version 1.0 (July 2015)");
		label_Version.setFont(new Font("Tahoma", Font.BOLD, 18));
		label_Version.setBounds(167, 28, 287, 22);
		contentPane.add(label_Version);

		JLabel label_author = new JLabel(
				"Author: Paul Chau (paulchauch1@gmail.com)");
		label_author.setFont(new Font("Arial", Font.PLAIN, 18));
		label_author.setBounds(108, 76, 371, 22);
		this.contentPane.add(label_author);

		JLabel label_tutor = new JLabel(
				"Supervisor: Dr. Ellis Solaiman (ellis.solaiman@newcastle.ac.uk)");
		label_tutor.setFont(new Font("Arial", Font.PLAIN, 18));
		label_tutor.setBounds(27, 121, 510, 22);
		contentPane.add(label_tutor);

		JLabel label_school = new JLabel("School of Computing Science");
		label_school.setFont(new Font("Arial", Font.PLAIN, 18));
		label_school.setBounds(167, 175, 235, 22);
		contentPane.add(label_school);

		JLabel label_university = new JLabel("Newcastle University, U. K.");
		label_university.setFont(new Font("Arial", Font.PLAIN, 18));
		label_university.setBounds(177, 208, 217, 22);
		contentPane.add(label_university);

	}
}
