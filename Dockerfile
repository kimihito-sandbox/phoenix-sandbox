FROM elixir:1.11.3

ENV NODE_VERSION 12.x

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs inotify-tools

RUN npm install npm@latest -g

RUN mix local.hex --force && \
  mix archive.install hex phx_new && \
  mix local.rebar --force

WORKDIR /usr/local/sandbox

COPY . .

RUN mix deps.get
