#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
set -x
# write your script here
# clone and generate xml file using xccov-to-sonarqube-generic.sh
pwd
ls -laF
git clone https://github.com/SonarSource/sonar-scanning-examples.git
pwd
ls -laF
bash /Users/runner/work/GitHubActions/GitHubActions/sonar-scanning-examples/swift-coverage/swift-coverage-example/xccov-to-sonarqube-generic.sh /Users/runner/work/GitHubActions/GitHubActions/.build/x86_64-apple-macosx/debug/GitHubActionsPackageTests.xctest > temp-coverage.xml
# strip Objective C out of file
cat temp-coverage.xml | sh parseSonarShellResult.sh> sonarqube-generic-coverage.xml

echo "WHERE ARE WE"
pwd
ls -laF
