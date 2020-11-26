# Helloku

> This is a small flask application to practice using Heroku.

## Quickstart

1. Build the local `helloku` docker image:

    ```
    make build
    ```

1. Run the local `helloku` docker container:

    ```
    PORT=9000
    make run PORT=$PORT
    ```

    * The local container will bind to the port specified by the `PORT` make variable. This gets passed into the container using the `PORT` environment variable. Most cloud container contracts leverage the `PORT` environment variable during deployment.

1. In a separate terminal, make a request to `$PORT`

    ```
    PORT=9000
    curl localhost:$PORT/
    ```
