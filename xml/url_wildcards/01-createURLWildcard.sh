source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<UrlWildcardCreate>
  <sourceUrl>/source/url/*</sourceUrl>
  <destinationUrl>/destination/url/{1}</destinationUrl>
  <forward>true</forward>
</UrlWildcardCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/urlwildcards \
'Accept:application/vnd.ez.api.UrlWildcard+xml' \
'Content-Type:application/vnd.ez.api.UrlWildcardCreate+xml'
