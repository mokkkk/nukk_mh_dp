
scoreboard players remove #mhdp_brachyr_head_active AsaMatrix 4
execute at @e[distance=0..15,type=armor_stand,tag=BrachyRParts,tag=HeadU] positioned ~ ~1.4 ~ facing entity @e[tag=BrachyRTarget,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 run function asa_animator:brachyr/manager/reactive/damage_a
execute if score #mhdp_brachyr_head_active AsaMatrix matches ..5 run function asa_animator:brachyr/manager/model/head_change_to_normal
execute if score #mhdp_brachyr_head_active AsaMatrix matches ..-1 run scoreboard players set #mhdp_brachyr_head_active AsaMatrix 0