# Server Management with Ansible

## Overview
This repository contains Ansible playbooks and inventory files for managing servers. The playbooks include tasks for user and group management, as well as package management using `apt`. The goal is to automate server configurations and streamline the process of managing multiple servers.

## Repository Structure
- `inventory/`: Contains inventory files that list the servers to manage.
- `playbooks/`: Contains Ansible playbooks for various server management tasks.
  - `user.yaml`: Playbook for user and group management.
  - `package.yaml`: Playbook for managing packages with `apt`.
- `scripts/`: Contains bash scripts for filtering .
  - `user_json.sh`: Script to convert user management playbook output to JSON format.
  -  `pkg_json.sh`: Script to convert package management playbook output to JSON format.

## Getting Started

### Prerequisites
- Ansible installed on the control node. `sudo apt install ansible`
- SSH access to the managed nodes.

### Installation
Clone the repository to your local machine:
```bash
git clone https://github.com/hcktune/servers-management.git
cd servers-management
ansible-playbook -i inventory.yaml -e <PLAYBOOKS_VARS> -l <IP_ADDRESSS | GROUP_OF_ADRESSES> <PLAYBOOK.yaml>
