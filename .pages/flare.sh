#! /bin/sh
# deploy on CloudFlare

# create robots.txt
cat <<EOT >> "./release/robots.txt"
User-agent: *
Disallow: /
EOT