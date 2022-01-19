
# 攻撃用マーカー召喚
summon marker ~ ~-1.4 ~ {Tags:["MonsterShot","KushalaBreath","Start"]}

execute as @e[type=marker,tag=KushalaBreath,tag=Start] at @s positioned ~ ~1.4 ~ facing entity @e[type=marker,tag=KushalaBreathTarget] eyes run tp @s ~ ~-1.4 ~ ~ ~

tag @e[type=marker,tag=KushalaBreath] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1
kill @e[tag=KushalaBreathTarget]

function asa_animator:kushala/anim/breath/events/particle