#!/bin/bash
ROO_HOME=/home/enorrmann/alter_dev/spring-roo-1.3.2.RELEASE/bin
BACKUP_FOLDER=init
PROJECT_HOME=/home/enorrmann/git/ixproyectos
$ROO_HOME/roo.sh script $BACKUP_FOLDER/backup.roo
cp -r $BACKUP_FOLDER/resources/* $PROJECT_HOME/src/main/resources/
cp -r $BACKUP_FOLDER/webapp/* $PROJECT_HOME/src/main/webapp/
cp -r $BACKUP_FOLDER/root/* $PROJECT_HOME/