source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<PolicyCreate>
  <module>content</module>
  <function>create</function>
  <limitations>
    <limitation identifier="Class">
      <values>
        <ref href="13"/>
      </values>
    </limitation>
    <limitation identifier="ParentClass">
      <values>
        <ref href="12"/>
      </values>
    </limitation>
  </limitations>
</PolicyCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/roles/5/policies \
'Accept:application/vnd.ez.api.Policy+xml' \
'Content-Type:application/vnd.ez.api.PolicyCreate+xml'
