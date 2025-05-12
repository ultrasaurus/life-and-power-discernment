#! /bin/sh
# deploy on CloudFlare

# create robots.txt
if [ "$CF_PAGES_BRANCH" != "flare" ]; then

cat << DOC > ./release/robots.txt
User-agent: *
Disallow: /
DOC

fi


