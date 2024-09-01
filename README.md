# Playbook Desktop

This repository will hold playbooks for my pc and servers using ansible.

- [Playbook Desktop](#playbook-desktop)
  - [Requirements](#requirements)
    - [SSH setup](#ssh-setup)
    - [Set user as password less sudo](#set-user-as-password-less-sudo)
    - [Install Ansible](#install-ansible)
    - [Install ansible-galaxy requirements](#install-ansible-galaxy-requirements)
    - [Creating a secret vault](#creating-a-secret-vault)
    - [Extra variables](#extra-variables)
  - [Using the ansible playbook](#using-the-ansible-playbook)

## Requirements

### SSH setup

This setup assumes that you have key based ssh access to your server.
To setup a new key, you can use the following.

1. Generate a new ssh key

    ```sh
    ssh-keygen -t ed25516 -a 128 -f ~/.ssh/enter_your_custom_name
    ```

2. Copy the ssh key to your server

    ```sh
    ssh-copy-id -i /path/to/your/private/key/file username@ip_address
    ```

> [!NOTE]
> You can use the ```-t rsa -b 4096``` option instead of ```-t ed25519``` to generate a key with comparable security and better compatibility at the price of creation and login performance

### Set user as password less sudo

Run `EDITOR=nvim visudo -f /etc/sudoers.d/01_${username}` to create a drop in file for your user and add `${username} ALL=(ALL:ALL) NOPASSWD: ALL` to enjoy passwordless `sudo`

### Install Ansible

Install required packages:

  ```sh
  sudo pacman -S ansible ansible-lint
  ```

### Install ansible-galaxy requirements

Install the ansible requirements:

```sh
ansible-galaxy install -r requirements.yml
```

### Creating a secret vault

Create a new secret vault with ansible:

```sh
ansible-vault create /secret/folder/path/vault.yml
```

### Extra variables

Check for variable staring with `vault_` in the vars files.

## Using the ansible playbook

Run the playbook:

```sh
ansible-playbook home.yml -i inventories/production.yml
```
