FROM python:2.7
MAINTAINER Filip Wieladek <wattos@gmail.com>


# Install pagekite
ENV PAGE_KITE_BINARY /usr/bin/pagekite.py
ADD https://pagekite.net/pk/pagekite.py $PAGE_KITE_BINARY 

COPY bootstrap.sh bootstrap.sh

ENTRYPOINT ["/bootstrap.sh"]
