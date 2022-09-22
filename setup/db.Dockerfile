FROM postgres:13.8-alpine

COPY init.sql /docker-entrypoint-initdb.d/