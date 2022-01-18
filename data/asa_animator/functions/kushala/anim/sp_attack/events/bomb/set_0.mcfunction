
# 攻撃用マーカー召喚
execute rotated ~ ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~45 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~90 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~135 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~180 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~225 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~270 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~315 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}

execute as @e[type=marker,tag=KushalaBomb,tag=Start] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
tag @e[type=marker,tag=KushalaBomb,tag=Start] remove Start

particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
playsound entity.generic.explode master @a ~ ~ ~ 3 0.7