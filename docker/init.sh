#!/bin/bash - 
#===============================================================================
#
#          FILE: init.sh
# 
#         USAGE: ./init.sh
# 
#   DESCRIPTION: initialize for docker-compose
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: john (), 
#  ORGANIZATION: 
#       CREATED: 09/19/2019 15:08
#      REVISION:  ---
#===============================================================================
# 1. Treat unset variables as an error
set -o nounset

# 2. for nexus3
mkdir -p ${HOME}/data/nexus
echo "nexus3 init done."

# 3. for gitlab
mkdir -p ${HOME}/data/gitlab/config
mkdir -p ${HOME}/data/gitlab/data
mkdir -p ${HOME}/data/gitlab/logs
echo "gitlab init done."

# 4. for httpd
mkdir -p ${HOME}/data/apache-httpd/conf
mkdir -p ${HOME}/data/apache-httpd/htdocs
mkdir -p ${HOME}/data/apache-httpd/logs
cp httpd.conf ${HOME}/data/apache-httpd/conf/

echo "nexus3 init done."

# 5. for jenkins
mkdir -p ${HOME}/data/jenkins/home
echo "jenkins init done."

# 6. for registry
mkdir -p ${HOME}/data/registry
echo "registry init done."