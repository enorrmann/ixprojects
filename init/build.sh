#!/bin/bash
ROO_HOME=/media/emilio/data/devel/spring-roo-1.3.2.RELEASE/bin
BACKUP_FOLDER=/home/emilio/git/ixprojects/init
PROJECT_HOME=/home/emilio/git/ixprojects
$ROO_HOME/roo.sh script $BACKUP_FOLDER/backup.roo
cp $BACKUP_FOLDER/messages_es.properties  $PROJECT_HOME/src/main/resources/ar/com/ix/proyectos/web/i18n
cp $BACKUP_FOLDER/roo_logo.png  $PROJECT_HOME/src/main/webapp/resources/images
