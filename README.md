Description
===========

Installs a greylog2 server and web interface from source.

Requirements
============

Cookbooks
---------

* elasticsearch
* java
* mongodb
* runit

Platform
--------

Only tested on Ubuntu.

Recipes
=======

Recipes are written in a modular way to support composable components. The
cookbook provides these composed services by default:

* server - setup a standard graylog2 server sans web interface
* web\_interface - setup the graylog2 web interface

Low-level recipes:

* \_group - install graylog2 group
* \_server\_config - install server configuration
* \_server\_dependencies - install required server dependencies
* \_server\_runit - setup service with runit
* \_server\_source - install server from source
* \_user - install graylog2 user
* \_web\_config - install web interface configuration
* \_web\_cronjobs - install cron jobs
* \_web\_dependencies - install required web interface dependencies
* \_web\_passenger - setup additional resources for passenger, like restart
* \_web\_set\_passenger - set passenger version
* \_web\_source - install web interface from source

Usage
=====

Either use one of the pre-composed recipes or compose your own versions from
the low-level recipes.

License and Author
==================

Author:: Nikolay Sturm <opscode@erisiandiscord.de>

Copyright:: 2012

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
