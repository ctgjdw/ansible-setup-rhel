# Ansible Playbooks

The playbooks are scripts to configure remote machine(s) via SSH. The `inventory.yaml` contains the machine details and variables.

> Run the `Ansible` playbooks in order.

## To Run

Using docker

1. `docker compose build`
2. `docker compose run ansible`
3. To run a playbook, e.g. `ansible-playbook -i ./setup-ws/inventory.yaml ./setup-ws/1-bootstrap-host.yaml -K -v`
