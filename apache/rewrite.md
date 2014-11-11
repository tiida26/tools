### apacheのリライトテンプレ  

- `http` -> `https` に変換
```
RewriteEngine On
RewriteCond %{HTTPS} off
RewriteCond %{HTTP_HOST} ^www\.hogehoge\.com
RewriteRule ^(.*)$ https://%{HTTP_HOST}$1 [R,L]
```
- `https の通信が off の時`、かつ `host名 が www.hogehoge.com であった`場合に という条件
- URIはそのまま`$1`でそのまま引き継がれる
