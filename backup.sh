
echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic backup -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo ------------------------------------------------------------------------------------------------------

# a git account and git running on the node is needed. https://docs.github.com/en 
cd OS10backupFabric/
#change the name as your project needs, check EVPN multisite or EVPN DCI for further examples 
ansible-playbook -i inventory copyconfig.yml
git status
git pull
git pull
git add .
git commit -a -m "standard update"
git push origin main
git status
echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic backup -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo --------------------------valerio.martini@gmail.com---------------------------------------------------
echo ------------------------------------------------------------------------------------------------------

echo ---- please note on git auth changes August 2021 - single password not accepted anymore
echo - setup your token
echo - https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token
