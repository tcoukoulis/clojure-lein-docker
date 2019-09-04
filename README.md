# Clojure Playground

Mess around with Clojure without needing Java installed locally.

## REPL

### EZ Mode

```
./scripts/repl.sh
```

### Normal mode

```
docker-compose run --rm base
```

## Creating a new app

There are two ways to create a new Clojure app with `lein`.

### EZ mode

Use the convenience script `init.sh` in the `scripts` directory and give it the desired name of your new app.

```
./scripts/init.sh my-new-app
```

### Normal mode

Manually create a new Clojure application with `lein`.

```
docker-compose run --rm base lein new app my-new-app
```

Set the `PROJECT_DIR` variable inside the `example.env` file and copy it to `.env`.

```
# example.env
PROJECT_DIR=my-new-app

mv example.env .env
```

## Run your new app

There are two ways to run your app with `lein` as well.

### EZ mode

Use the convenience script `run.sh` in the `scripts` directory.

```
./scripts/run.sh
```

### Normal mode

Manually run your app with `docker-compose`.

```
docker-compose run --rm base lein run
```

## Compile app (experimental)

```
./scripts/build.sh
```

Compiled jar will be available at `my_new_app/target/uberjar/my-new-app-0.1.0-SNAPSHOT-standalone.jar`
