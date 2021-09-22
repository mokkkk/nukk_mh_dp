### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:sin/
# sinを取得します。角度は度数法で指定します。
## 入力: 角度(int) => storage math: in
## 出力: sin(double) => storage math: out

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

# 値取得
function math:circular/common

# 値を返す
execute if score Angle360 AiMath matches ..179 run data modify storage math: out set from storage math:table circular[-4][-4][-4][-4][0]
execute if score Angle360 AiMath matches 180.. run data modify storage math: out set from storage math:table circular[-4][-4][-4][-4][1]

# スコアボード削除
scoreboard objectives remove AiMath
