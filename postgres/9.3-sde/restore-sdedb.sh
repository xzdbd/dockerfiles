#!/bin/bash

set -e

psql -f /postgres-dump "$POSTGRES_USER"

