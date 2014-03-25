plight
========

A role that covers installation, basic configuration, and usage of plight. Plight is a application agnostic load balancer pool management tool.

Requirements
------------

This module should work on any Linux platform where plight can be installed. However this role will cover installation for EL or Fedora systems.

Role Variables
--------------

The variables that can be defined for this role and a brief description if necessary:

    webserver.port: 10101
    webserver.host: 0.0.0.0                       # IP to bind webservice to, 0.0.0.0 defaults to all
    webserver.user: plight
    webserver.group: plight
    webserver.logfile: /var/log/plight/access.log # Path to access logs for plightd web service
    webserver.loglevel: INFO
    webserver.filesize: 1024000
    webserver.rotationcount: 10
    logging.logfile: /var/log/plight/plight.log   # Plight runtime logs
    logging.loglevel: INFO
    logging.filesize: 1024000
    logging.rotationcount: 10
    permanents.statefile: /var/tmp/node_disabled  # File to be used by plight for determining state

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