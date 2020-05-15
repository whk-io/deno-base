# Deno Base Image

This sets up a build chain for a default [Deno](https://deno.land/) base container

## Requirements

* hadolint - Dockerfile linting
* Make - build system
* Docker - container creation
  
## Useage

```make``` : build container

```make run``` : run container

```make shell``` : access bash shell in container

```make test``` : run Deno tests