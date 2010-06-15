Vagrant LAMP environment
========================


Requirements
------------

Vagrant:

    $ gem install vagrant

    
Usage
-----

From within this project:

    $ vagrant box add base http://files.vagrantup.com/base.box
    $ vagrant up
    $ vagrant ssh
    
To use this box in a different project:

    $ vagrant box add ubuntu-base http://ubuntu-base.s3.amazonaws.com/package.box
    $ vagrant init ubuntu-base

    
Installed packages
------------------

* apt
* apache2
* php::php5
* php::module_sqlite3
* sqlite

