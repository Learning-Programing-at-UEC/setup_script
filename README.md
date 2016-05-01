# setup_script

* 2016-05-01　起動時にbashrcを読み込むように修正

#pythonのコードを実行するとき

```
$workon uec
(uec)XXXXX$ipython
```

#workonのコマンドが使えない時

```
source .bashrc
```

#起動時に自動的にbachrcを読み込むようにする方法


.bash_profileに以下の内容を追加

```
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
```
初期の状態では.bash_profileはないので新規で作成して記述してください


#新しく仮想環境を作るとき

python3での構築例
```
mkvirtualenv --python=`which python3` 好きな名前
```

python2での構築例

```
mkvirtualenv 好きな名前
```

#仮想環境からログアウト

```
$deactivate
```
