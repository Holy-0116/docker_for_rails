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


- イメージビルド
```
docker image build ./rails_app
```

- Railsアプリ自動生成
```
docker compose run --rm -it rails new . -d mysql
```

- データベース作成
```
docker compose run --rm -it rails db:create
```

