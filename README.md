# GoogleAuthenticator
installs and sets up Google authentication using default settings centos 7

Use at your own risk and test it with another terminal window before logging out as you can lock yourself out of your computer.

bash <(wget -qO- https://raw.githubusercontent.com/Sumiza/GoogleAuthenticator/master/install.sh)

To turn off normal password login and just use the google authenticator verification code
nano /etc/pam.d/sshd
#auth       substack     password-auth
