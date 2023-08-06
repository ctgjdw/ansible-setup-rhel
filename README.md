# Ansible Playbooks

The playbooks are scripts to configure remote machine(s) via SSH. The `inventory.yaml` contains the node details and variables.

> Run the `Ansible` playbooks in order.

## To Run

1. Check `playbook/*/configs` to ensure that the config files fit your setup.
2. Update `playbook/*/inventory.yaml` with your node details and other variables.

Run using `docker`:

> Note: the docker container will need to have connectivity to the target hosts. You may try using network_mode `host`, which uses docker with the physical host network

1. `docker compose build`
2. `docker compose run ansible`
3. To run a playbook, e.g. `ansible-playbook -i ./setup-ws/inventory.yaml ./setup-ws/1-bootstrap-host.yaml -K -v`
    - Enter the sudo (become) password when prompted

Run using `WSL`:

> Note: the script will overwrite your ssh `known_hosts` file. This is minor as it can always be regenerated whenever you make a new ssh.

1. Ensure that `ansible` is installed via `pip` or `apt`/`yum`/`dnf`/other package managers.
2. `cd playbooks`
3. To run a playbook, e.g. `ansible-playbook -i ./setup-ws/inventory.yaml ./setup-ws/1-bootstrap-host.yaml -K -v`
    - Enter the sudo (become) password when prompted

## Scripts Rundown

### 1-bootstrap-host.yaml

