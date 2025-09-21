# zenn-contents

Zenn CLI を使って記事作成や公開フローを効率化するためのメモです。

## 初期セットアップ

- devcontainer で立ち上げる

## 記事作成の基本

- 新規記事: `npx zenn new:article --title "タイトル"`

## プレビュー & 編集効率化

- ローカルプレビュー: `npx zenn preview`

## 画像やアセットの扱い

- 画像は `articles/_posts` など任意のサブディレクトリにまとめておき、Markdown では相対パスで参照
- 画像圧縮は TinyPNG や `squoosh-cli` で事前に行うと読み込みが速い
- 共有用 OGP 画像は `ogp.png` をテンプレ化し、記事固有で置き換え

## GitHub IaC

- 実行フロー: `cd terraform && terraform init && terraform plan` で内容確認 → `terraform apply` で GitHub に反映

- `export GITHUB_TOKEN=$(gh auth token)`
