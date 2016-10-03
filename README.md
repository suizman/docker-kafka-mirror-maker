# Docker Kafka Mirror Maker for local testing 

### Requirements:

* Docker 1.8+
* Docker Compose 1.7+

### Run:

```
$ docker-compose up -d
```

### Send some random messages:
* The default topic is called mirror.maker.topic
```
$ docker-compose exec mirror-maker /scripts/send-messages.sh
```
### Check mirroring:
```
$ docker-compose exec mirror-maker /scripts/check-messages.sh [dc1|dc2]
```
* The messages from each DC should be the exact same..

### Customization will be added soon..