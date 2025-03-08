#!/bin/sh

# set -e は「エラーが発生するとスクリプトを終了する」オプション
set -e

rm -f /app/tmp/pids/server.pid

# コンテナのプロセスを実行する
exec "$@"