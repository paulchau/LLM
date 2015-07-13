# LPromela
A tool for validating the logical consistency of adaptive e-learning system implemented at Newcastle Univ. UK
LPromela is an IDE of extension of Promela, mainly served for the Adaptive e-Learning System. The name LPromela stands for Learning-verification Promela.

## Installation

### For using the program
As SPIN is used, a suitable C Compiler is required. 
For Windows User, we rec-ommend downloading through MinGW or Cygwin.
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
