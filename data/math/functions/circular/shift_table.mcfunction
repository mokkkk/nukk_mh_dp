### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:circular/shift_table
# 角度に合わせて三角関数テーブルをずらします。

# 角度保存
execute store result storage math:_ angle int 1 run scoreboard players get Angle AiMath

# テーブルがまだ読み込まれていなければ初期化
execute unless data storage math:table circular run function math:circular/init_table

# テーブルシフト解除
data remove storage math:table circular[-4][-4][-4][6]
data remove storage math:table circular[-4][-4][-4][5]
data remove storage math:table circular[-4][-4][-4][4]
data remove storage math:table circular[-4][-4][6]
data remove storage math:table circular[-4][-4][5]
data remove storage math:table circular[-4][-4][4]
data remove storage math:table circular[-4][6]
data remove storage math:table circular[-4][5]
data remove storage math:table circular[-4][4]
data remove storage math:table circular[6]
data remove storage math:table circular[5]
data remove storage math:table circular[4]

# テーブルシフト
execute store result score _ AiMath run data get storage math:_ angle 8388608
# ↑ここはオーバーフローさせちゃだめ
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular append from storage math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular append value []
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular[-4] append from storage math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular[-4] append value []
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular[-4][-4] append from storage math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular[-4][-4] append value []
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular[-4][-4][-4] append from storage math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage math:table circular[-4][-4][-4] append value []
