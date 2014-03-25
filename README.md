plight
========

A role that covers installation, basic configuration, and usage of plight. Plight is a application agnostic load balancer pool management tool.

Requirements
------------

This module should work on any Linux platform where plight can be installed. However this role will cover installation for EL or Fedora systems.

Role Variables
--------------

The variables that can be defined for this role and a brief description if necessary:

    plight_port: 10101
    plight_host: 0.0.0.0                              # IP to bind webservice to, 0.0.0.0 defaults to all
    plight_user: plight
    plight_group: plight
    plight_access_logfile: /var/log/plight/access.log # Path to access logs for plightd web service
    plight_logfile: /var/log/plight/plight.log        # Plight runtime logs
    plight_loglevel: INFO
    plight_logfilesize: 1024000
    plight_logrotationcount: 10
    plight.statefile: /var/tmp/node_disabled          # File to be used by plight for determining state

Example Playbooks
-----------------

Install plight

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