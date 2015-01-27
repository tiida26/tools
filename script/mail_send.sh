#!/bin/bash

MAIL_TO="ambo.sun@gmail.com"
MAIL_FROM="noreply@hogehoge.com"
SUBJECT="メールテスト"
DATA="データ"

mail_send () {

cat << EOD | nkf -j -m0 | sendmail -t
From: ${MAIL_FROM}
To: ${MAIL_TO}
Subject: ${SUBJECT}
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-2022-JP"
Content-Transfer-Encoding: 7bit


メールが送信されます。
ここに${DATA}が入るよ。

EOD
}

mail_send

exit 0
