FROM postgres:12
# FROM bitnami/postgresql
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
