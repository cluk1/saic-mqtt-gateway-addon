# SAIC MQTT Gateway Homeassistant Addon

A service that queries the data from an MG iSMART account and publishes the data over MQTT.

MG iSMART is the connectivity system in your MG car (MG5, MG4, ZS...).

The repository containing the actual source code is here: https://raw.githubusercontent.com/SAIC-iSmart-API/saic-python-mqtt-gateway/

## Prerequisites

* You have an iSMART account (can be created in the iSMART app)
* Your car needs to be registered to your account

## Configuration

The mqtt host, user and password are read from homeassistant. Just speciry the saic_user and saic_password in the configuratin tab.

