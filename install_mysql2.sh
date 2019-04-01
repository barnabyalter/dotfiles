#!/bin/bash

VERSION=$1

env ARCHFLAGS="-arch x86_64" gem install mysql2 -v $VERSION -- --with-mysql-config=/usr/local/Cellar/mariadb-connector-c/2.2.2/bin/mariadb_config  --with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include

# OR
# gem install mysql2 -v $VERSION -- --with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include
