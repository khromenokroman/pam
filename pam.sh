#!/bin/bash

useradd day && useradd night && useradd friday
echo "Otus2019"|passwd --stdin day && echo "Otus2019" | passwd --stdin night && echo "Otus2019" | passwd --stdin friday
bash -c "sed -i 's/^PasswordAuthentication.*$/PasswordAuthentication yes/' /etc/ssh/sshd_config && systemctl restart sshd.service"
sed -i 's|account    include      password-auth|account    required     pam_exec.so      /vagrant/test_login.sh|' /etc/pam.d/sshd
chmod -R 0770 /vagrant/test_login.sh
setenforce 0
groupadd admin
usermod -a -G admin day
usermod -a -G admin root
usermod -a -G admin vagrant