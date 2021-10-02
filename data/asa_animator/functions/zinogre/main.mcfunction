
# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:zinogre/manager/change

# 待機
execute if predicate asa_animator:zinogre/stay run function asa_animator:zinogre/anim/stay/main

# 行動
execute run function asa_animator:zinogre/anim/main
