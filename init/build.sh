#!/bin/bash
ROO_HOME=/home/ubuntu/workspace/spring-roo-1.3.2.RELEASE/bin
BACKUP_FOLDER=init
$ROO_HOME/roo.sh script $BACKUP_FOLDER/backup.roo
cp $BACKUP_FOLDER/messages_es.properties  src/main/resources/ar/com/ix/proyectos/web/i18n
cp $BACKUP_FOLDER/roo_logo.png src/main/webapp/resources/images
