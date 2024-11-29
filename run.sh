#!/usr/bin/env bashio

export MQTT_URI="tcp://"$(bashio::services mqtt "host")":1883"
export MQTT_USER=$(bashio::services mqtt "username")
export MQTT_PASSWORD=$(bashio::services mqtt "password")
export SAIC_USER=$(bashio::config 'saic_user')
export SAIC_PASSWORD=$(bashio::config 'saic_password')
export CHARGING_STATIONS_JSON=$(bashio::config 'charging_stations_json')

/usr/local/bin/python ./mqtt_gateway.py $*

