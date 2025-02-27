#!/bin/bash

cd $(dirname $0)/../../../

version=1.7.2

find . -type f \( -name "finalize.sh" \
-o -name "create_app.sh" \
-o -name "build.gradle" \
-o -name "release.bat" \
-o -name "package.bat" \
-o -name "release.sh" \
-o -name "package.sh" \
-o -name "version.txt" \
-o -name "Dockerfile" \
\) -exec sed -i '' s/$version/"$version-SNAPSHOT"/ {} +
