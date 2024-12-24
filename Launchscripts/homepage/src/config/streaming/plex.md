# Plex Media Server

## Overview

The Plex Media Server is running as a Docker container with hardware acceleration enabled and direct access to media storage. It provides streaming services for various types of content organized into specialized libraries.

## Libraries

### Movies

- Standard movies library in 1080p
- Select titles available in 4K
- Automatic metadata fetching
- Organized by genres, years, and collections

### Anime Movies

- Dedicated anime films library
- Original and dubbed versions where available
- Specialized metadata for anime content

### TV Series

- Television shows organized by season
- Latest episodes added automatically
- Both ongoing and completed series

### Anime Series

- Separate library for anime shows
- Seasonal anime updates
- Both subbed and dubbed versions where available

## Features

### Hardware Acceleration

- Supports transcoding for various devices
- Efficient CPU usage for multiple streams

### Network

- Running in host network mode for optimal performance
- Direct device discovery supported
- Remote access enabled

## Related Services

### Overseerr

- Request new content
- Track media availability
- Manage user requests

### Tautulli

- Stream monitoring
- Usage statistics
- Notification system
