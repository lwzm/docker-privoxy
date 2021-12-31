# Docker privoxy

```
docker run -p 8118:8118 lwzm/privoxy [option-line] [option-line-2] ...
```

e.g.

```
docker run -p 8118:8118 lwzm/privoxy "forward-socks5 / xxx-socks5-server:1080 ."
```
