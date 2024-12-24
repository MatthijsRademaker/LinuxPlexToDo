# Overseerr

## Overview

Overseerr is running as a Docker container and serves as the main request management system for the media server. It provides a user-friendly interface to request new content and track request statuses.

## Features

### Content Requests

- Movies

  - 1080p standard quality
  - 4K quality (requires Discord approval)
  - Automatic quality profile selection
  - Custom request notes support

- TV Series

  - Per-season requesting
  - 1080p quality standard
  - Full series or individual seasons
  - Automatic monitoring of new episodes

- Anime Content
  - Dedicated request handling
  - Both movies and series supported
  - Sub/Dub preferences tracking

### Integration

#### Plex Integration

- Direct Plex library scanning
- Automatic availability updates
- User access management
- Watch status tracking

#### Radarr/Sonarr Integration

- Automated request processing
- Quality profile management
- Release monitoring
- Download status tracking

#### Discord Integration

- Request notifications
- Status updates
- Admin approval system
- User communications

### Technical Details

- Access Control:
  - User authentication
  - Role-based permissions
  - Request limits
  - Admin approval workflows
