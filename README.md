# GoogleAuthenticator
installs and sets up Google authentication using default settings centos 7

Use at your own risk and test it with another terminal window before logging out as you can lock yourself out of your computer.

bash <(wget -qO- https://raw.githubusercontent.com/Sumiza/GoogleAuthenticator/master/install.sh)

To turn off normal password login and just use the google authenticator verification code (dont do this but if you really wanted to.... put in 2nd line of auth required pam_google_authenticator.so into pam.d/sshd, that will require you to get two codes right. Yes you will have to wait the ~15sec)

nano /etc/pam.d/sshd

#auth       substack     password-auth
