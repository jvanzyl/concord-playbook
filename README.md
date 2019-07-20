# concord-playbook

A Concord flow and an Ansible playbook to install Concord.

Currently tested only on AWS with Ubuntu computes.

## Usage

### Using Concord

- place the private key into the `concord.pem` file in the root directory;
- copy the `inventory.example.ini` into `inventory.ini`. Open the file and set the required environment details;
- run on a local Concord instance using the `./run.sh` script.

### Using Ansible CLI

- place the private key into the `concord.pem` file in the root directory;
- copy the `inventory.example.ini` into `inventory.ini`. Open the file and set the required environment details;
- run:
  ```
  $ ansible-galaxy install -r requirements.yml
  $ ansible-playbook -u ubuntu --private-key=concord.pem -i inventory.ini playbook.yml
  ```

