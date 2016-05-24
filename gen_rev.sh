#!/bin/sh

GITTAG=$(git describe --tag)

sed -i "s/{{VERSION}}/${GITTAG}/g" package.json
sed -i "s/{{VERSION}}/${GITTAG}/g" components/AutoProxy.js
sed -i "s/{{BUILD}}/${GITTAG}/g" components/AutoProxy.js
