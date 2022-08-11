A PostgreSQL docker build that allows the creation of multiple databases in one container

This build uses a script to create additional databases and grants all privileges to the databases to the admin user.

This is built on top of the offical PostgreSQL image

## docker-compose.yml

    postgres:
        restart: always
        image: irobbierobinson/multi-db-postgres:latest
        volumes:
            - ./pg-db-data:/var/lib/postgresql/data
        environment:
            - POSTGRES_PASSWORD=postgres
            - POSTGRES_USER=postgres
            - POSTGRES_DB=postgres
            - POSTGRES_ADDITIONAL_DATABASES=db,keycloak
        ports:
            - 5432:5432
        networks:
            - backend

## Environment Variables

* `POSTGRES_PASSWORD` - Admin Password (default: postgres)
* `POSTGRES_USER` - Admin Username (default: postgres)
* `POSTGRES_DB` - Default Postgresql DB Name (default: postgres)
* `POSTGRES_ADDITIONAL_DATABASES` - Additional databases that will be created alongside the default (separated by commas).
