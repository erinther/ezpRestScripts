source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<VersionUpdate>
  <initialLanguageCode>eng-GB</initialLanguageCode>
  <fields>
    <field>
      <id>1234</id>
      <fieldDefinitionIdentifier>name</fieldDefinitionIdentifier>
      <languageCode>eng-GB</languageCode>
      <fieldValue>New folder name</fieldValue>
    </field>
  </fields>
</VersionUpdate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58/versions/2 \
'Accept:application/vnd.ez.api.Version+xml' \
'Content-Type:application/vnd.ez.api.VersionUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
