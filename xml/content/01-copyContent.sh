source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58 \
'Destination:/content/locations/1/5' \
'X-HTTP-Method-Override:COPY'