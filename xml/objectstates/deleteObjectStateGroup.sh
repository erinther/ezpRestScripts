source ../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/content/objectstategroups/2 \
