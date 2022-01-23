
# 攻撃用マーカー召喚
execute if score #mhdp_kushala_lv AsaMatrix matches ..1 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreath","Start"]}
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreath","Start","Lv2"]}

execute as @e[type=marker,tag=KushalaBreath,tag=Start] at @s positioned ~ ~ ~ facing entity @e[type=marker,tag=KushalaBreathTarget] eyes run tp @s ~ ~ ~ ~ ~

tag @e[type=marker,tag=KushalaBreath] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1
kill @e[tag=KushalaBreathTarget]

function asa_animator:kushala/anim/breath/events/particle