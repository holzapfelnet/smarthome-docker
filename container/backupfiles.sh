#!/bin/sh
# copy important config files to backup folder

BACKUP_PATH="/home/pi/smarthome-docker/container/backup"
SOURCE_PATH="/home/pi/smarthome-docker/container"

mkdir -p "$BACKUP_PATH/fhem"
cp "$SOURCE_PATH/fhem/fhem.cfg" "$BACKUP_PATH/fhem"

mkdir -p "$BACKUP_PATH/grafana"
cp "$SOURCE_PATH/grafana/grafana.db" "$BACKUP_PATH/grafana"

mkdir -p "$BACKUP_PATH/homebridge"
cp "$SOURCE_PATH/homebridge/config.json" "$BACKUP_PATH/homebridge"

mkdir -p "$BACKUP_PATH/nodered/data"
cp "$SOURCE_PATH/nodered/data/flows.json" "$BACKUP_PATH/nodered/data"

mkdir -p "$BACKUP_PATH/telegraf"
cp "$SOURCE_PATH/telegraf/telegraf.conf" "$BACKUP_PATH/telegraf"

mkdir -p "$BACKUP_PATH/zigbee2mqtt/data"
cp "$SOURCE_PATH/zigbee2mqtt/data/configuration.yaml" "$BACKUP_PATH/zigbee2mqtt/data"