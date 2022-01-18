
# 攻撃用マーカー召喚
execute rotated ~ ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~45 ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~90 ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~135 ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~180 ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~225 ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~270 ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}
execute rotated ~315 ~ run summon marker ^ ^ ^20 {Tags:["MonsterShot","KushalaBomb","Start"]}

execute as @e[type=marker,tag=KushalaBomb,tag=Start] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
tag @e[type=marker,tag=KushalaBomb,tag=Start] remove Start