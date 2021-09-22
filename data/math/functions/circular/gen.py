#!/usr/bin/env python
# -*- coding: utf-8 -*-

### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.
import codecs
import math

with codecs.open(os.path.join(os.path.dirname(__file__), 'init_table.mcfunction'), 'w', 'utf_8') as f:
    texts = '''### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:circular/init_table
# 三角関数用ストレージを初期化します。

## シフト用リスト
data modify storage math:table empty_list2 set value [[],[]]

## 三角関数テーブル
## 共通した角度を使い、できるだけそのまま返す(=execute storeではなくdata modifyにしたい)ため -sin, -cosも持つ
## sin, -sin, cos, -cos, tan の順
'''
    texts = texts + 'data modify storage math:table circular set value '
    texts = texts + '['
    for i in range(4):
        texts = texts + '['
        for j in range(4):
            texts = texts + '['
            for k in range(4):
                texts = texts + '['
                for l in range(4):
                    texts = texts + '['
                    if i < 3:
                        a = i * 64 + j * 16 + k * 4 + l
                        (s,c,t) = (round(math.sin(math.radians(a)),10), round(math.cos(math.radians(a)),10), round(math.tan(math.radians(a)),10))
                        texts = texts + str(s) + 'd,' + str(-s) + 'd,' + str(c) + 'd,' + str(-c) + 'd,' + str(t) + 'd'
                    texts = texts + ']' + (',' if l < 3 else '')
                texts = texts + ']' + (',' if k < 3 else '')
            texts = texts + ']' + (',' if j < 3 else '')
        texts = texts + ']' + (',' if i < 3 else '')
    texts = texts + ']'
    f.write(texts)
