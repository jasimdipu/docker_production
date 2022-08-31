#!/bin/bash
# shellcheck disable=SC1083
APP_PORT=$A{PORT:-8000}
# shellcheck disable=SC2164
cd /app/
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm core.wsgi:application
# shellcheck disable=SC2215
--bind "0.0.0.0:${APP_PORT}"