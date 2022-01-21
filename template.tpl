___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 user properties for GA4 for javascript interface",
  "description": "This is the template for GTM Tag Template call GA4 for javascript interface made by Pluszero-global.\n\nYou can use this template to put the User Property Variable blank the template I told upper.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SIMPLE_TABLE",
    "name": "user_properties",
    "displayName": "User Properties",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "key",
        "name": "key",
        "type": "TEXT"
      },
      {
        "defaultValue": "",
        "displayName": "value",
        "name": "value",
        "type": "TEXT"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
const makeTableMap = require('makeTableMap');

let user_properties = data.user_properties ? makeTableMap(data.user_properties, 'key', 'value') : undefined;

if(user_properties){
  return user_properties;
} else {
  return false;
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 2021. 9. 8. 오후 7:00:38


