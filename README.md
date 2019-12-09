# nghttpd with supervisord Docker Image

Base image for web application that includes nghttpd as a static file server,
managing processes with supervisord. Other apps to be launched can be configured
with files added to `/etc/supervisor/conf.d`. Minimal example:

```ini
[program:otherapp]
command=/usr/bin/otherapp
```

[Further documentation on program config for supervisord](http://supervisord.org/configuration.html#program-x-section-settings)
