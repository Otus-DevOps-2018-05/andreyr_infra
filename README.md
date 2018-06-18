bastion_IP = 35.228.236.228
someinternalhost_IP = 10.166.0.3



# Connecting to internal host 10.166.0.3 via bastion 35.228.236.228 in one command

➜  ~ ssh -At 35.228.236.228 "ssh 10.166.0.3"
Welcome to Ubuntu 16.04.4 LTS (GNU/Linux 4.13.0-1019-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

0 packages can be updated.
0 updates are security updates.


Last login: Mon Jun 18 20:02:58 2018 from 10.166.0.2
bytamine@someinternalhost:~$ hostname
someinternalhost




# Connecting to internalhost via 'ssh internalhost' command using bash functions
ssh() {
    if [[ $@ == "internalhost" ]]; then
        command ssh -At 35.228.236.228 "ssh 10.166.0.3" 
    else
        command ssh "$@"
    fi
}


