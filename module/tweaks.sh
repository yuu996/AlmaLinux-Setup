#!/bin/sh
#change capslock->capslock
sudo yum install -y gnome-tweaks
cat << END
========================================================================
設定変更後、再起動してください。


設定変更順
1. tweaksを起動する。
2. [キーボードとマウス]を選択する
3. [追加のレイアウトオプション]をクリック
4. [Ctrl position]を展開
5. [CapsLockをCtrlとして扱う]を選択する。
========================================================================
END

sleep 10
