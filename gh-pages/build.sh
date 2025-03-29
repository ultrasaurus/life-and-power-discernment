#! /bin/sh

DEST=gh-pages/_website
mkdir -p $DEST

SOURCE="website/source"
BUILD_FILE="$SOURCE/build.md"
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

(cd website;
echo ============ building website to ../$DEST;
echo ============ `pwd`;
altwebgen -o ../$DEST build )
