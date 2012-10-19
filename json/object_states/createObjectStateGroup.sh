source ../../rest.cfg

echo '{
  "ObjectStateGroupCreate": {
    "identifier": "new_state_group",
    "defaultLanguageCode": "eng-US",
    "names": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New state group"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New state group description"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objectstategroups \
'Accept:application/vnd.ez.api.ObjectStateGroup+json' \
'Content-Type:application/vnd.ez.api.ObjectStateGroupCreate+json'