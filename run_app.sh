#!/bin/bash
set -e

case $ENV in
  DEV)
    echo "Running development server"
    exec python todo.py
    ;;
  *)
    echo "Running production server"
    exec uwsgi --http 0.0.0.0:9090 \
      --wsgi-file /app/todo.py \
      --callable app --stats 0.0.0.0:9191
    ;;
esac