# docker commands

- docker exec -it <container> ph
- docker stop <container>
- docker logs container
- docker compose -f "docker-compose.qbittorrent.yml" up -d
<!-- check outbound ip -->
- docker exec -it qbittorrent curl ifconfig.me

Highest ip is 172.30.1.34
