source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/roles/5 \
'Accept:application/vnd.ez.api.Role+xml' \
