# robosys2025
ロボットシステム学/課題1

## sinsuコマンド
[![test](https://github.com/inochida/robosys2025/actions/workflows/sinsu_test.yml/badge.svg)](https://github.com/inochida/robosys2025/actions/workflows/sinsu_test.yml)
- 10進数の入力を2進数に変換して出力します。また、数字の絶対値を2のべき乗の和で出力します。

## 実行方法
ターミナルで以下のコマンドを入力し、クローンと権限付与をした後、実行してください
```
$ git clone https://github.com/inochida/robosys2025.git
$ cd robosys2025
$ chmod +x sinsu
$ chmod <数字> | ./sinsu
```

## 入力された数字が整数の場合
```
$ echo 5 | ./sinsu
0b101 (4+1)
```
0bの後の数字が2進数となります。2のべき乗の和は（）で表示されます。

## 入力された数字が小数の場合
```
$ echo 5.99999 | ./sinsu
0b101 (4+1)
```
小数点以下は切り捨てて、実行されます。

## 入力された数字が負の場合
```
$ echo -5 | ./sinsu
-0b101 (4+1)
```
負の場合のみ符号がつきます。（）は絶対値のため、符号はつきません。

## 入力された文字が数字でない場合
```
$ echo あ | ./sinsu
ValueError: could not convert string to float: 'あ\n'
```
数字以外の時は進数変換できないためエラーが表示されます。

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7 ~ 3.13

## テスト環境
- Ubuntu 22.04.3 LTS
- GitHub Actions
  - OS: ubuntu-latest
  - Python: 3.7 ~ 3.13

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
- ©2025 Sota Ino

## 参考文献
- 以下のサイトの関数を参考にし、進数変換のコードを作成しました。
  - https://af-e.net/python-binary-decimal/#rtoc-3
  - https://note.nkmk.me/python-enumerate-start/
  - https://www.sejuku.net/blog/41752
