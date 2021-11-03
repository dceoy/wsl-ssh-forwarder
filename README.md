wsl-ssh-forwarder
=================

SSH Forwarder for WSL2

1.  Install SSH in WSL.

    ```sh
    $ sudo apt -y install ssh
    $ sudo ssh-keygen -A
    ```

2.  Copy `forward_ssh_port.sh` in `/usr/local/bin/` in WSL.

    ```sh
    $ git clone https://github.com/dceoy/wsl-ssh-forwarder.git
    $ sudo cp wsl-ssh-forwarder/forward_ssh_port.sh /usr/local/bin/
    ```

3.  Set `scheduled_task.bat` on Task Scheduler in Windows.
