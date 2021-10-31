wsl-ssh-forwarder
=================

SSH Forwarder for WSL2

1.  Install SSH in WSL.

    ```sh
    $ sudo apt -y install ssh
    ```

2.  Put `forward_ssh_port.sh` in WSL.

    ```sh
    $ git clone git@github.com:dceoy/wsl-ssh-forwarder.git
    $ sudo cp wsl-ssh-forwarder/forward_ssh_port.sh /usr/local/bin/
    $ sudo chmod +x /usr/local/bin/forward_ssh_port.sh
    ```

3.  Set `forward_ssh_port.bat` on Task Scheduler in Windows.
