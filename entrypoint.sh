#!/usr/bin/env bash
# Entrypoint runs the helloku Flask app with Gunicorn

PORT=${PORT:-3000}

exec gunicorn --bind 0.0.0.0:$PORT helloku:app $@
