## コンテナ構築

- ローカルPC上にディレクトリを作成して移動する
```
mkdir docker-projects
```
```
cd docker-projects
```

- git cloneする　※末尾をアプリ名に編集してから実行

```
git clone https://github.com/XXXX.git: <アプリ名>
```

- ディレクトリ内に移動する
```
cd アプリ名
```


- イメージビルド(タグ無し)
```
docker image build -t <アプリ名> ./rails_app
```
ERROR: Cannot connect to the Docker daemon at 〜が表示された場合はDockerDesktopが起動していない可能性があります。

イメージが作成できたかを確認
```
docker image ls
```

- Railsアプリ自動生成
```
docker compose run --rm -it web rails new . -d mysql
```
※Overwrite /rails_app/Gemfile? (enter "h" for help) [Ynaqdhm]にはYを入力する

- データベース作成
```
docker compose run --rm -it web rails db:create
```

