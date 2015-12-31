#!/bin/sh

# 該当アカウントのフォルダへ移動
mkdir -p ~/.ssh/
cd ~/.ssh/

# github, bitbucket接続用ssh_key生成
ssh-keygen -t rsa -b 4096 -C "github" -f github_id_rsa
ssh-keygen -t rsa -b 4096 -C "bitbucket" -f bitbucket_id_rsa
ssh-keygen -t rsa -b 4096 -C "gitlab" -f gitlab_id_rsa

# ssh関連設定コピー
ln -s ~/git/mac-settings/dot-file/ssh/config ~/.ssh/

# php用のリポジトリをbrewに追加
brew update
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/php
brew install php70
brew install php70-intl

# cakephp setup用
brew install composer

