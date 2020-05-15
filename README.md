# [Deno](https://deno.land/) Base Image

This sets up a build chain for a default [Deno](https://deno.land/) base container

## Pull Image

```docker pull goldimage/deno:latest```

```docker pull goldimage/deno:v1.0.0.1```

## Build Requirements

* hadolint - Dockerfile linting
* Make - build system
* Docker - container creation
  
## Useage

```make``` : build container

```make run``` : run container

```make shell``` : access bash shell in container

```make test``` : run [Deno](https://deno.land/)