#!/bin/sh

# greg script to convert podcasts to opus
# requires: wget, ffmpeg

LINK="$1"
DIR="$2"
FILENAME="$3"

TMPFILE=$(mktemp --suffix=".greg")

/usr/bin/wget --no-verbose --show-progress "$LINK" -O "$TMPFILE"
ffmpeg -i "$TMPFILE" -v quiet -stats -y -acodec libopus -ab 16k "$DIR/${FILENAME}.opus"

rm -f $TMPFILE
