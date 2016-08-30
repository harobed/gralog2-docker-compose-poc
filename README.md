# Gralog2 docker-compose POC

Use this POC to test Graylog2 and send some log to Graylog.


## Instructions

```
$ docker-compose up -d
$ docker-compose logs -f
```

Configure « Inputs »:

* Go to http://localhost:9000
* Sign in:
  * Username : admin
  * Password : admin
* Go to "System" » "Inputs"

* Configure Gelp UDP:
  * Select input: `GELF UDP`
  * Click on « Launch new input »
  * Title: « Gelf UDP »
  * Click « Save »

* Configure Gelp TCP:
  * Select input: `GELF TCP`
  * Click on « Launch new input »
  * Title: « Gelf TCP »
  * Click « Save »

Send some log to Graylog:

```
$ ./send_udp_gelf_log.sh
$ ./send_tcp_gelf_log.sh
```
