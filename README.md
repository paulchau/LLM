# LLM
A tool for validating the logical consistency of adaptive e-learning system implemented at Newcastle Univ. UK
LLM is a LTL Manager for extension of Promela, mainly served for the Adaptive e-Learning System. The name LLM stands for LPromela LTL Manager.

## Installation

### For using the program
As SPIN is used, a suitable C Compiler is required. 
For Windows User, we recommend downloading through MinGW or Cygwin. If you are running on 64-bit windows, a recommended GCC can be accessed <a href="https://drive.google.com/file/d/0B0Twc6pBul7ab3lRRkN6LXQ4WFE/view?usp=sharing">here</a>.
To use the attached GCC, 
* 1. Decrypt in C:\GCC 
* 2. Go to Control Panel -> System -> Advanced System Settings ->  Environment Variables
* 3. In User variables field, found path. Click Edit.
* 4. Add "C:\GCC\bin;" in. Path variables are sperated through semicolon ';', plase notice.
* 5. Click OK to confirm and restart the software.

The program is developed in JAVA and the file is an executable Java. 
A Java Runtime Environment (JRE) which support Java v1.7 or above is required to download. 
You can download it from https://java.com/download .

MySQL has been used to store all the LTL formula templates. Please make sure there exists a usable MySQL server connected to the computer/server. Configuration is required to be finished in the file :
LPromela/src/ncl/b1037041/db/tool/DataBaseUtil.java

Installation of MySQL server can be found in https://dev.mysql.com/downloads/mysql/

### For running verification
The SPIN compiler, spin.exe is attached together with the executable Java file.
To successfully compile the file, the marcos attached, i.e. 
* setting.h
* EduOperation.h
* bitverctor.lpr
* for.h

are required to deploy in the same folder as your LPromela and Rules file.
