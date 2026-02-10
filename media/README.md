# Media stack

Media server stack with Plex and Jellyfin, along with -arr services and torrenting.

I use portainer and its git functionality to deploy these files and update my compose files from git, but they can be used like any other `compose.yaml` file

All containers should be configured with ENV variables (.env file or portainer UI).

## Misc

I use Oracle free tier (4 powerful ARM CPU, 24go RAM, 200go disk) to host Plex and a 5 To OneDrive rclone mounted drive for media storage. I can transcode up to two 1080p x265 streams.

## Services

### Plex (plex.yml)
- **plex**: Media server
- **plexautolanguages**: Automatic audio/subtitle language selection

### Jellyfin (jellyfin.yml)
- **jellyfin**: Media server
- **jellyseerr**: Request management for Jellyfin
- **jellysearch**: Search interface for Jellyfin
- **jellystats**: Statistics and analytics for Jellyfin
- **streamystats**: Additional streaming statistics

### Media Management (services.yml)
- **torrent**: qBittorrent with VueTorrent UI
- **flaresolverr**: Cloudflare bypass for indexers
- **ygege**: YGG torrent automation
- **cross-seed**: Cross-seeding automation
- **qui**: Quality upgrade interface
- **autobrr**: Automatic torrent downloading
- **prowlarr**: Indexer management
- **sonarr/sonarr4k**: TV show management
- **radarr/radarr4k**: Movie management
- **overseerr**: Request management
- **tautulli**: Plex analytics
- **watchstate**: Watch state sync between Plex and Jellyfin

## TODO

Move local mount to docker volumes