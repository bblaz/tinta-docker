#!/bin/bash
set -e

: ${DB_USER:=${POSTGRES_ENV_POSTGRES_USER:='postgres'}}
: ${DB_PASSWORD:=${POSTGRES_ENV_POSTGRES_PASSWORD}}
: ${DB_HOSTNAME:=${POSTGRES_PORT_5432_TCP_ADDR:='postgres'}}
: ${DB_PORT:=${POSTGRES_PORT_5432_TCP_PORT:='5432'}}
: ${TRYTOND_DATABASE_URI:="postgresql://${DB_USER}:${DB_PASSWORD}@${DB_HOSTNAME}:${DB_PORT}/"}
: ${PYTHONOPTIMIZE:=1}

export TRYTOND_DATABASE_URI PYTHONOPTIMIZE

trytond-worker -d ${POSTGRES_DB} -n 4 --logconf /logging.conf
