# setup_script

#workonのコマンドが使えない時

```
source .bashrc
```

#起動時に自動的にbachrcを読み込むようにする方法

```
.bash_profileに以下の内容を追加

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
```
初期の状態では.bash_profileはないので新規で作成して記述してください

#pythonのコードを実行するとき

```
$workon uec
(uec)XXXXX$ipython
```
