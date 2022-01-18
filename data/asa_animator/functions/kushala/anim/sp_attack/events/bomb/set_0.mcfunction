
# 攻撃用マーカー召喚
execute rotated ~ ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~60 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~120 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~180 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~240 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~300 ~ run summon marker ^ ^ ^4 {Tags:["MonsterShot","KushalaBomb","Start"]}

execute as @e[type=marker,tag=KushalaBomb,tag=Start] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
tag @e[type=marker,tag=KushalaBomb,tag=Start] remove Start