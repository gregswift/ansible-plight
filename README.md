plight
========

A role that covers installation, basic configuration, and usage of plight. Plight is a application agnostic load balancer pool management tool.

Requirements
------------

This module should work on any Linux platform where plight can be installed. However this role will cover installation for EL or Fedora systems.

Role Variables
--------------

The following variables are used by this role and values are defined in defaults/main.yml:

    plight_port: 10101
    plight_host: 0.0.0.0                              # IP to bind webservice to, 0.0.0.0 defaults to all
    plight_user: plight
    plight_group: plight
    plight_log_accessfile: /var/log/plight/access.log # Path to access logs for plightd web service
    plight_log_file: /var/log/plight/plight.log       # Plight runtime logs
    plight_log_level: INFO
    plight_log_filesize: 1024000
    plight_log_rotationcount: 10
    plight_state_file: /var/tmp/node_disabled         # File to be used by plight for determining state
    plight_package_state: latest                      # If you want to ensure plight is installed, or current

Tags
----
* install - includes packages, configure, and service
* packages - configure yum repo and install plight package. Currently EL/Fedora only
* configure - populate plight.conf
* service - Enable and start plightd
* disable - Remove node from rotation
* enable - Add node to rotation

Example Playbooks
-----------------

Install plight (runs through entire playbook, including disabling and enabling)

    - hosts: servers
      roles:
         - plight

Disable a node for a deploy

    - hosts: servers
      roles:
         - { role: plight, tags: ['disable'] }

Enable a node after a deploy

    - hosts: servers
      roles:
         - { role: plight, tags: ['enable'] }

License
-------

APLv2

Author Information
------------------

Greg Swift <greg.swift@rackspace.com>