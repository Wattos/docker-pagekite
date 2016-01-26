# docker-pagekite
Dockerized pagekite (See https://pagekite.net/)


# How to use the docker container:

Register your kite at pagekite.net.

Run the docker container :

```docker run wattos/pagekite --defaults --service_on=<protocol>:<kite-name>:<machine-name>:<port>:<kite_secret>```

```
where:
  <protocol> is the protocol you want to run. e.g. http
  <kite-name> is the kite name. e.g. example.pagekite.net
  <machine-name> is the machine you want to link to. In a docker environment that will never be localhost, but a different container process, e.g. nginx
  <port> is the port of the other machine to redirect to
  <kite-secret> is the kite secret you receive from pagekite.net
```
