#!/bin/bash
PATH=$(npm bin):$PATH
DEST_FOLDER=18_unibas_scrum

rm -rf $DEST_FOLDER

reveal-md erfahrungsbericht.md --css css/bluesky.css --static $DEST_FOLDER

# copy styles
cp -R css/assets $DEST_FOLDER/_assets/css

# copy images
mkdir $DEST_FOLDER/images
cp -R images/erfahrungsbericht $DEST_FOLDER/images

rm $DEST_FOLDER/index.html
mv $DEST_FOLDER/erfahrungsbericht.html $DEST_FOLDER/index.html
