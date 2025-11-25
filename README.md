# robosys2025
ロボットシステム学/課題1

## sinsuコマンド
![test](https://github.com/inochida/robosys2025/actions/workflows/sinsu_test.yml/badge.svg)
- 10進数の入力を2進数に変換して出力します

## 実行方法
ターミナルで以下のコマンドを入力し、クローンと権限付与を行ってください
```
$ git clone https://github.com/inochida/robosys2025.git
$ cd robosys2025
$ chmod +x sinsu
```

## 入力された数字が整数の場合
```
$ echo 5 | ./sinsu
0b101
```
0bの後の数字が2進数となります

## 入力された数字が少数の場合
```
$ echo 5.99999 | ./sinsu
0b101
```
小数点以下は切り捨てて、実行されます

## 入力された数字が負の場合
```
$ echo -5 | ./sinsu
-0b101
```
負の場合のみ符号がつきます

## 入力された文字が数字でない場合
```
$ echo あ | ./sinsu
ValueError: could not convert string to float: 'あ\n'
```
数字以外の時は進数変換できないためエラーが表示されます

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7 ~ 3.10

## テスト環境
- Ubuntu 22.04.3 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- ©2025 Sota Ino
