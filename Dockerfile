FROM elixir:1.14.1-alpine

COPY . /app
WORKDIR /app
ENV USE_GLOBAL_ELIXIR=true

CMD ["script/server"]
