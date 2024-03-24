#!/bin/bash

sudo service tor stop
sudo ufw stop
sudo kalitorify --tor
