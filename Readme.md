# OS10 config backup

backup.sh is a script to launch BOTH local back-up and sync on your git repository</br>
The ansible Palybook (copyconfig.yml) is made to create automatic backup of all switches on the <inventory>. 
It save the file in .txt with date/time tag </br>
Also create jinja file to be reuse as template to "push" configurations to switches
ref: https://github.com/val3r1o/os10-config-push 

# How to use
1</br>
Install Git and clone the project </br>

sudo apt update</br>
sudo apt -y install git</br>
git clone https://github.com/val3r1o/os10-config-backup.git</br>

2</br>
Create your own Github repository so you can sync on your own space. Change the name based on your github and project</br>

3</br>
run ./backup when ready </br>
-> 
All configurations are stored on this local folder: /configs </br>

Please review https://github.com/val3r1o/os10-startup-ansible to create control node right way </br>

# Note 
full Lab example is moved here: https://github.com/val3r1o/os10-evpn-multisite
