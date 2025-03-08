
# FROM：使用するイメージ、バージョン
FROM ruby:3.1-alpine



ARG RUBYGEMS_VERSION=3.3.20
ARG APP_NAME="rails_app"


# 必要なパッケージをインストール
RUN apk update && apk add --no-cache \
  build-base \
  git \
  musl-dev \
  mysql-dev \
  mysql-client \
  tzdata \
  && rm -rf /var/cache/apk/*


# RUN：任意のコマンド実行
RUN mkdir /${APP_NAME}

# WORKDIR：作業ディレクトリを指定
WORKDIR /${APP_NAME}

# COPY：コピー元とコピー先を指定
# ローカルのGemfileをコンテナ内の/app/Gemfileに
COPY ./Gemfile /${APP_NAME}/Gemfile

COPY ./Gemfile.lock /${APP_NAME}/Gemfile.lock

# RubyGemsをアップデート
RUN gem update --system ${RUBYGEMS_VERSION} && \
    bundle install

COPY . /${APP_NAME}

# コンテナ起動時に実行させるスクリプトを追加
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Rails サーバ起動
CMD ["rails", "server", "-b", "0.0.0.0"]