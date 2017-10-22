#!/bin/bash

# ##
# start nagios on debian stretch
# ##

# [1]
sudo systemctl restart apache2.service

# [2]
sudo systemctl start nagios.service
