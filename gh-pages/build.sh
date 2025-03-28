#! /bin/sh

BUILD_FILE="website/source.md"
echo $BUILD_FILE

DATE_STRING=$(date +"%a, %b %d %Y - %I:%M %p")
echo $DATE_STRING

cat <<EOT >> $BUILD_FILE

&nbsp;

\`\`\`
$DATE_STRING
branch=$BRANCH_NAME
$GITHUB_SHA
\`\`\`
---
&nbsp;
EOT


altwebgen build -o gh-pages/_website
