# Arch autoconfig

This repository will a playbook to configure my Arch linux machine.

## 1. Requirements

The system this playbook was developed and intended for run the following:

- Arch Linux
- Ryzen 5000 series CPU
- Radeon RX 6000 series GPU

## 2. Installation

## 2.1 Set user as password less sudo

Run `EDITOR=nvim visudo -f /etc/sudoers.d/01_${username}` to create a drop in file for your user and add `${username} ALL=(ALL:ALL) NOPASSWD: ALL` to enjoy passwordless `sudo`

### 2.2 Install Ansible

Install required python packages:

```sh
pacman -S python3
```

Create a virtual environment:

```sh
python -m venv .venv
```

Activate your venv

```sh
source .venv/bin/activate (or activate.fish or activate.csh)
```

Install required python modules:

```sh
python -m pip install -U -r requirements.txt
```

### 2.3 Install ansible-galaxy requirements

Install the ansible requirements:

```sh
ansible-galaxy install -r requirements.yml
```

## 3. Using the ansible playbook

Run the playbook:

```sh
ansible-playbook home.yml -i inventories/production.yml
```

## Credits/Sources
