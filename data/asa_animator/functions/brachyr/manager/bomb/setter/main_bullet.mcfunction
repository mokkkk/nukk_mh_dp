
scoreboard players add @s AsaMatrix 1

tp @s ^ ^ ^1.5 ~ ~
execute if entity @s[tag=Rotate] run function asa_animator:brachyr/manager/rotate

execute at @s if block ~ ~-0.2 ~ #asa_animator:no_collision at @s run function asa_animator:zinogre/manager/check_ground
execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

execute unless entity @s[tag=Red] if score @s AsaMatrix matches 3 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/head/set
execute unless entity @s[tag=Red] if score @s AsaMatrix matches 6 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/head/set
execute unless entity @s[tag=Red] if score @s AsaMatrix matches 9 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/head/set
execute unless entity @s[tag=Red] if score @s AsaMatrix matches 12 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/head/set
execute if entity @s[tag=Red] if score @s AsaMatrix matches 3 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/red/set
execute if entity @s[tag=Red] if score @s AsaMatrix matches 6 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/red/set
execute if entity @s[tag=Red] if score @s AsaMatrix matches 9 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/red/set
execute if entity @s[tag=Red] if score @s AsaMatrix matches 12 positioned ~ ~1 ~ run function asa_animator:brachyr/manager/bomb/red/set
execute if score @s AsaMatrix matches 12.. run kill @s