FROM postgres:13.11

COPY init.sql /docker-entrypoint-initdb.d/