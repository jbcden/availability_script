# Setup
* There are two parts to this program. The first part consists of 4 short scripts:
	* master.sh 
	* available.sh 
	* expect_available.sh 
	* parse_scritps.sh

# Usage
* These scripts are used to create a file of the form of "final". This program is run by simply executing the master.sh program. This will be set up with cron to run every 5-10 minutes to produce a fresh file.
* The second part of this program (ssh.sh) is a little script that will be used by students to ssh into the machine with the least CPU usage. This will be exposed as a simple command line application for students to invoke.
* In addition, a .secrets file must be in the current directory that defines the variables PASSWORD and APP_PATH. The password will be used by the expect script for logging into the different machines and the APP_PATH is where all log files and other temporary files created by the program will be stored.
