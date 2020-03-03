# .confs

## certbot
```bash
docker run -it --rm \
-v /home/zetxx/certbot/certs:/etc/letsencrypt certbot/certbot:arm64v8-latest certonly \
--manual --preferred-challenges dns -m ??somemail?? \
--agree-tos \
-d '*.belogradchik.biz, belogradchik.biz'
```
