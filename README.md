# robosys2023

* ロボットシステム学2023で使ったコマンド.

# 概要
* 使い方にある実行方法１では１から入力した値までの和と差を計算
* 使い方にある実行方法２では指定された数字で各数字に対して和と差を計算

## plusコマンド
[![test](https://github.com/Xe0000/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Xe0000/robosys2023/actions/workflows/test.yml)
# インストール方法
* 以下を実行
```bash
git clone https://github.com/Xe0000/robosys2023.git
```

# 使い方
ホームディレクトリに移動
```bash
cd
```
ディレクトリを移動
```bash
cd robosys2023
```
実行方法１
```
seq 5 | ./plus
15,-15
```
* 足し算、引き算の順に出力される
実行方法２
```bash
echo -e "1\n2\n-1\n0.1" | python3 plus
2.1,-2.1
```
* 足し算、引き算の順に出力される

# 必要なソフトウェア
* Python
   テスト済み:3.7~3.10
# テスト環境
* Ubuntu20.04 on Windows

# 権利関係
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，大部分を下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
      * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Yuta Sekino
