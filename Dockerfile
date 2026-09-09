# o.toplist.cz — multi-stage Hugo build.
# Stage 1 vendors Go modules (theme), stage 2 builds the static site,
# stage 3 is the final image serving the built site via nginx.
# All work happens inside the build; the host node gets no tooling installed.
#
# Hugo extended is installed from the official .deb release (same as CI),
# because the registry mirror here only serves gohugoio/hugo:latest
# (the base image, without the extended binary).

ARG HUGO_VERSION=0.125.7

FROM golang:1.22-bookworm AS hugo-base
ARG HUGO_VERSION
RUN apt-get update -qq \
 && apt-get install -y -qq --no-install-recommends wget ca-certificates \
 && wget -q -O /tmp/hugo.deb \
      "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb" \
 && dpkg -i /tmp/hugo.deb \
 && rm -f /tmp/hugo.deb \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

FROM hugo-base AS deps
WORKDIR /src
COPY go.mod go.sum ./
RUN hugo mod vendor

FROM hugo-base AS build
ARG HUGO_ENV=production
ENV HUGO_ENV=$HUGO_ENV
WORKDIR /src
COPY . .
COPY --from=deps /src/_vendor/ ./_vendor/
RUN hugo --gc --minify

FROM nginx:1.27-alpine AS final
ENV TZ=Europe/Prague
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /src/public /usr/share/nginx/html
EXPOSE 80
