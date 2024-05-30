# ベースイメージとしてalpineを使用
FROM --platform=linux/arm/v7 alpine:3.18

# 必要なパッケージをインストール
RUN apk add --no-cache \
    git \
    openssh-client

# 作業ディレクトリを設定
WORKDIR /git

# git-syncスクリプトを作成
COPY git-sync.sh /usr/local/bin/git-sync.sh
RUN chmod +x /usr/local/bin/git-sync.sh

# エントリーポイントを設定
ENTRYPOINT ["/usr/local/bin/git-sync.sh"]
