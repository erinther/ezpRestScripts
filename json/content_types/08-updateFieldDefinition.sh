source $(dirname "$0")/../../rest.cfg

echo '{
  "FieldDefinitionUpdate": {
    "identifier": "updated_name",
    "names": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "Test"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "This is a test"
        }
      ]
    },
    "fieldGroup": "content",
    "position": "10",
    "isTranslatable": "true",
    "isRequired": "false",
    "isInfoCollector": "false",
    "isSearchable": "true",
    "defaultValue": "New test"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/types/1/draft/fieldDefinitions/4 \
'Accept:application/vnd.ez.api.FieldDefinition+json' \
'Content-Type:application/vnd.ez.api.FieldDefinitionUpdate+json' \
'X-HTTP-Method-Override:PATCH'
