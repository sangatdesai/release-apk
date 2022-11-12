#!/bin/bash

flavor=""
if [ "${APP_FLAVOR}" == "" ]; then
    echo "default flavor"
else
    flavor="${APP_FLAVOR}/"
    echo "appended flavor : $flavor"
fi

hub release create -a ./${APP_FOLDER}/build/outputs/apk/${flavor}release/**.apk -m "v${GITHUB_REF##*/}" ${GITHUB_REF##*/}