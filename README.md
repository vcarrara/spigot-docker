# docker-spigot

## :rocket: Getting started

The most straightforward way to use this containerized **Spigot** server is to build the image and to run the container as an interactive process `-it`.

1. Build the image

It is possible to specify a spigot version specifying a `SPIGOT_REVISION` environment variable during the build process.

```bash script
$ docker build -t <image-name> [--build-arg SPIGOT_REVISION=<spigot-revision>] .
```

2. Start the container

By default, Spigot files are located in the `/spigot` folder. Feel free to map a volume to this directory. 

Start the container running the following command:

```bash script
$ docker run -it -d -p 25565:25565 -v "$(pwd)/spigot:/spigot" <image-name>
```

It is possible to specify a different port:

```bash script
$ docker run -it -d -p 25000:25000 -e SPIGOT_PORT=25000 -v "$(pwd)/spigot:/spigot" <image-name>
```

- [Optional] Reattach the Spigot console 

```bash script
$ docker attach <container-id>
```

- [Optional] Detach the Spigot console

<kbd>Ctrl</kbd> + <kbd>p</kbd>, <kbd>Ctrl</kbd> + <kbd>q</kbd>

## Environment variables

| Variable              | Description               | Default value |
| --------------------- | ------------------------- | ------------- |
| SPIGOT_REVISION       | Version of spigot         | 1.16.5        |
| SPIGOT_PORT           | Port of spigot            | 25565         |