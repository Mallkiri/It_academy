From ubuntu:22.04 as builder
WORKDIR /app
RUN apt-get update && apt-get install -y \
  wkhtmltopdf \
  wge \
  npm \
   && rm -rf /var/lib/apt/lists/*
 RUN wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64
RUN chmod a+x /usr/local/bin/yq
COPY . .
