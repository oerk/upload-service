#!/bin/sh
export US_ROOT=/tmp
export US_ENABLE_DOWNLOAD=0
export US_ENABLE_DELETE=0
export US_SECRET_FILE=/root/upload-service-secret
mkdir -p $US_ROOT/$USER/INBOX
`dirname $0`/us.pl daemon --listen='http://*:9873'
