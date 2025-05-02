# salt-user-butler
Module for managing users and groups with saltstack







### Install:
```bash
git clone https://github.com/vaurasan/salt-user-butler.git
```
If you cloned the repository to /srv, the path would now be /srv/salt-user-butler

### Usage:

- **Create** users, install apache2 on minions:
```bash
sudo salt '*' state.apply users
```
- **Get** user and group info from minions:
```bash
sudo salt '*' state.apply getusers
```
- **Show** user group info on main web page:
```bash
sudo salt '*' state.apply web-groups
```
- **Show** user info on main web page:
```bash
sudo salt '*' state.apply web-users
```
