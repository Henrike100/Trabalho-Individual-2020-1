#!/bin/bash
set -e

rm -f /usr/src/api/tmp/pids/server.pid

rake db:create
rake db:migrate 

exec "$@"
