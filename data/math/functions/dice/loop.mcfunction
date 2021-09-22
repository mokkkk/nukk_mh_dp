### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:dice/loop
# サイコロを一回振って結果を追加します。

# 0 - 2147483647 の乱数取得
function math:random/inner
# 0 - 32767 として乱数取得
execute store result score Rnd AiMath run data get storage math:_ random 0.0000152587890625
# 最大値をかけて32768で割ることで最も等確率に近い 0 - Max-1 を取得
execute store result storage math:_ tmp int 0.000030517578125 run scoreboard players operation Rnd AiMath *= Max AiMath
# 1 - Max にして結果を入れる
execute store result score Rnd AiMath run data get storage math:_ tmp 1
data modify storage math: out.dice append value 0
execute store result storage math: out.dice[-1] int 1 run scoreboard players add Rnd AiMath 1
execute store result storage math: out.sum int 1 run scoreboard players operation Sum AiMath += Rnd AiMath
# 指定回数分繰り返し
execute store result storage math:_ count int 1 run data get storage math:_ count 0.9999999999
execute unless data storage math:_ {count:0} run function math:dice/loop
