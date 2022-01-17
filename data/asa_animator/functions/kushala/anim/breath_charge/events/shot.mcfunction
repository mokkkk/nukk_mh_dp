
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathC","Start"]}

execute as @e[type=marker,tag=KushalaBreathC,tag=Start] at @s facing entity @e[type=marker,tag=KushalaBreathTarget] feet run tp @s ~ ~ ~ ~ ~

tag @e[type=marker,tag=KushalaBreathC] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1
kill @e[tag=KushalaBreathTarget]

function asa_animator:kushala/anim/breath/events/particle