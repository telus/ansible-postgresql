# ansible-postgresql

[PostgreSQL](http://www.postgresql.org/) is a powerful, open source object-relational database system.

[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)

Tunables
--------
* `postgres_client` (boolean) - Install PostgreSQL client?
* `postgres_server` (boolean) - Install PostgreSQL server?
* `postgres_user` (string) - User to run postgresql as
* `postgres_runtime_root` (string) - Directory for runtime data
* `postgres_pidfile_path` (string) - Path for pidfile
* `postgres_accepts_external_connections` (boolean) - Allow connections from places that aren't localhost?
* `postgres_backup_enabled` (boolean) - Enable backups?
* `postgres_backup_path` (string) - Directory to store backups
* `postgres_backup_frequency` (string) - Frequency of backups

Dependencies
------------
* [colstrom.apt-repository](https://github.com/colstrom/ansible-apt-repository/)

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: colstrom.postgresql
           postgres_server: yes
           postgres_backup_enabled: yes
           postgres_backup_frequency: daily
           postgres_backup_path: /data/backup/postgresql

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
* Aaron Pederson
* Steven Harradine
