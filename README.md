wsl-ssh-forwarder
=================

SSH Forwarder for WSL2

1.  Install SSH in WSL.

    ```sh
    $ sudo apt -y install ssh
    $ sudo ssh-keygen -A
    ```

2.  Edit /etc/ssh/sshd_config in WSL.

3.  Set `forward_ssh_port.sh` on Task Scheduler in Windows.

    ```bat
    wsl --user root --exec /path/to/forward_ssh_port.sh
    ```
