
echo ------------------------------------------------------------------------------------------------------
echo ---------------------------- This is an automatic backup ---------------------------------------------
echo ---------------------------- Dell NETWORKING ---------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------

source ~/opt/dellos10env/bin/activate
cd OS10backupFabric/
ansible-playbook -i inventory copyconfig.yml
git status
git pull
git pull
git add .
git commit -a -m "generic sync"
git push origin main
git status

echo ---------------------------- This is an automatic backup ---------------------------------------------
echo ---------------------------- Dell NETWORKING ---------------------------------------------------------
echo --------------------------------valerio@dell.com------------------------------------------------------

