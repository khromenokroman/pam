# PAM
Otus dz PAM

Для проверки дз Необходимо запустить Vagrantfile, который поднимет
виртуальную машину а так же выполнит необходимые команды из скрипта
pam.sh Для этого скрипт pam.sh должен находиться в одной директорией
с Vagranfile. 
Для решения задачи использовался модуль pam_exec.so. В конфиге 
/etc/pam.d/sshd прописывется необходимое значение и скрипт test_login.sh.
Пользователи day,root,vagrant добавлены в группу admin, соотвественно
им разрешен доступ по ssh, во все дни, а юзерам night и friday по будням.

