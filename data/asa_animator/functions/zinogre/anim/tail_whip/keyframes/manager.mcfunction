execute if score #asa_zinogre_kindex AsaMatrix matches 0 run function asa_animator:zinogre/anim/tail_whip/start
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 0 run function asa_animator:zinogre/anim/tail_whip/keyframes/0
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 1 run function asa_animator:zinogre/anim/tail_whip/keyframes/1
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 2 run function asa_animator:zinogre/anim/tail_whip/keyframes/2
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 3 run function asa_animator:zinogre/anim/tail_whip/keyframes/3
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 4 run function asa_animator:zinogre/anim/tail_whip/keyframes/4
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 5 run function asa_animator:zinogre/anim/tail_whip/keyframes/5
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 6 run function asa_animator:zinogre/anim/tail_whip/keyframes/6
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 7 run function asa_animator:zinogre/anim/tail_whip/keyframes/7
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 8 run function asa_animator:zinogre/anim/tail_whip/keyframes/8
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 9 run function asa_animator:zinogre/anim/tail_whip/keyframes/9
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 10 run function asa_animator:zinogre/anim/tail_whip/keyframes/10
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 11 run function asa_animator:zinogre/anim/tail_whip/keyframes/11
execute unless entity @s[tag=RotateChanged] if score #asa_zinogre_kindex AsaMatrix matches 12.. run function asa_animator:zinogre/anim/tail_whip/end
scoreboard players set #asa_zinogre_tick_current AsaMatrix 0
tag @s remove RotateChanged
