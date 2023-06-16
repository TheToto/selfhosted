# VPS stack

This repository contains docker-compose files of my VPS setup.

I use portainer and its git functionality to deploy these files and update my compose files from git, but they can be used like any other `compose.yaml` file

All containers should be configured with ENV variables (.env file or portainer UI).

## TODO

Move local mount to docker volumes