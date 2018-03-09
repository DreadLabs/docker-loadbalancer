# dreadlabs/loadbalancer

A loadbalancer service for flexible, dynamic host registration and
SSL certificate generation.

It makes use of the following images:

  - `nginx:1.13`
  - `jwilder/docker-gen:0.7.3`
  - `jrcs/letsencrypt-nginx-proxy-companion:v1.7`
  
It uses the "separate containers" strategy to bind the docker socket to an internal
service only for better security.

## Makefile

Tested with GNU Make 3.81. `VERSION` environment variable defaults to `latest`.
`BASE` environment variable defaults to `nginx`.

### Build

    make build [-e CONTEXT=nginx|letsencrypt|docker-gen VERSION=x.y]

### Release

    make release [-e CONTEXT=nginx|letsencrypt|docker-gen VERSION=x.y]

## License

[MIT](LICENSE)
