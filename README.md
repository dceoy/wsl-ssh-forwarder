wsl-ssh-forwarder
=================

SSH Forwarder for WSL2

1.  Install Git and SSH in WSL.

    ```sh
    $ sudo apt -y install git ssh
    ```

2.  Edit /etc/ssh/sshd_config in WSL.

3.  Put `forward_ssh_port.sh` in WSL.

    ```sh
    $ git clone https://github.com/dceoy/wsl-ssh-forwarder.git
    $ sudo cp wsl-ssh-forwarder/forward_ssh_port.sh /usr/local/bin/
    ```

4.  Set `forward_ssh_port.bat` on Task Scheduler in Windows.
