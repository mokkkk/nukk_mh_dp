
# 攻撃用マーカー召喚
execute if score #mhdp_kushala_lv AsaMatrix matches ..1 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start"]}
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Lv2","Start"]}

execute as @e[type=marker,tag=KushalaBreathT,tag=Start] run tp @s ~ ~ ~ ~ 70

tag @e[type=marker,tag=KushalaBreathT] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1