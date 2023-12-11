#! /bin/sh

INDEX_FILE="markdown/index.md"
echo $INDEX_FILE

DATE_STRING=$(date +"%a, %b %d %Y - %I:%M %p")
echo $DATE_STRING

cat <<EOT >> $INDEX_FILE

&nbsp;

&nbsp;

&nbsp;

---
\`\`\`
$DATE_STRING
branch=$BRANCH_NAME
$GITHUB_SHA
\`\`\`
EOT


webgenr -o gh-pages/_website
