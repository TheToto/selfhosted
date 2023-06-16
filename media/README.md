# Media stack

Plex stack with -arr services and torrenting.

I use portainer and its git functionality to deploy these files and update my compose files from git, but they can be used like any other `compose.yaml` file

All containers should be configured with ENV variables (.env file or portainer UI).

## Misc

I use Oracle free tier (4 powerful ARM CPU, 24go RAM, 200go disk) to host Plex and a 5 To OneDrive rclone mounted drive for media storage. I can transcode up to two 1080p x265 streams.

## TODO

Move local mount to docker volumes