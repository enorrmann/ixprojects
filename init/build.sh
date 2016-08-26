#!/bin/bash
ROO_HOME=/home/ubuntu/workspace/spring-roo-1.3.2.RELEASE/bin
PROJECT_HOME=/home/ubuntu/workspace/ixprojects
BACKUP_FOLDER=init
$ROO_HOME/roo.sh script $BACKUP_FOLDER/backup.roo
cp -r $BACKUP_FOLDER/resources/* $PROJECT_HOME/src/main/resources/
cp -r $BACKUP_FOLDER/webapp/* $PROJECT_HOME/src/main/webapp/
