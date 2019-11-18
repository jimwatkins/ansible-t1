server {
  listen 80;
  listen [::]:80;

  server_name plex.montana.local;

location / {
    proxy_pass http://192.168.1.158:32400;
    proxy_buffering off;
    }

location /sonarr {
    proxy_pass http://butte.montana.local:8989;
    proxy_buffering off;
    }
location /radarr {
    proxy_pass http://butte.montana.local:7878;
    proxy_buffering off;
    }

}
