#!/bin/bash

# Use this only if Robot is installed and make sure target/robotframework-reports is empty (using mvn clean)
cd "$(dirname "$0")"
robot --name Chrome --variable Browser:Chrome --outputdir target/robotframework-reports --timestampoutputs .
robot --name Safari --variable Browser:Safari --outputdir target/robotframework-reports --timestampoutputs .
rebot --name JupiterToys --outputdir target/robotframework-reports --output Final.xml target/robotframework-reports/output*.xml

cd target/robotframework-reports
rm output-*.xml log-*.html report-*.html 
exit 0

