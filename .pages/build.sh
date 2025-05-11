#! /bin/sh

DEST=.pages/_website
mkdir -p $DEST

SOURCE="website/source"

cp .pages/_site.yaml $SOURCE/.

BUILD_FILE="$SOURCE/build.md"
echo $BUILD_FILE

DATE_STRING=$(TZ=America/Los_Angeles date +"%a, %b %d %Y - %I:%M %p")
echo $DATE_STRING

cat <<EOT >> $BUILD_FILE

&nbsp;

&nbsp;

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
