source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/trash/72 \
'Accept:application/vnd.ez.api.TrashItem+xml' \
