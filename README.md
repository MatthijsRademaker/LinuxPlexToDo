# LinuxPlexToDo

## things to install

- Plex
- Git
  - github cli
- docker
- Eddie-Cli
- vscode
- overseer -> pref from ezarr

## what to configure

- mount synology drive in /etc/fstab
- eddie cli and make it run on startup see -> TODO file with commands
  - if PC turned off run
    - sudo iptables-legacy -I INPUT -i br-fc4d1503be30 -j ACCEPT
    - sudo iptables-legacy -I FORWARD -i br-fc4d1503be30 -j ACCEPT
- make the docker compose run on startup after eddie startup is done
- ezarr setup and then docker compose from this repo
  - add root and user to mediacenter group
- make the overwatch repo run on startup

## remaingin:

- bazarr
- audio books
- overwatch run script from terminal

## After reboot:

- TODO startup eddie
- run ip tables for docker
- run the docker compose
- run overwatchz
