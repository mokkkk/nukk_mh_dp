execute if score #asa_zinogre_kindex AsaMatrix matches 0 run function asa_animator:zinogre/anim/charge/start
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 0 run function asa_animator:zinogre/anim/charge/keyframes/0
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 1 run function asa_animator:zinogre/anim/charge/keyframes/1
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 2 run function asa_animator:zinogre/anim/charge/keyframes/2
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 3 run function asa_animator:zinogre/anim/charge/keyframes/3
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 4.. run function asa_animator:zinogre/anim/charge/end
scoreboard players set #asa_zinogre_tick_current AsaMatrix 0
tag @s remove RotateChanged
