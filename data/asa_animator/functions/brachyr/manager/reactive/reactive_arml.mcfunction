
scoreboard players remove #mhdp_brachyr_arml_active AsaMatrix 4
execute at @e[type=armor_stand,tag=BrachyRParts,tag=ArmL1,distance=0..15] positioned ~ ~1.4 ~ facing entity @e[tag=BrachyRTarget,sort=nearest,limit=1] feet positioned ^ ^ ^0.5 run function asa_animator:brachyr/manager/reactive/damage_a
execute if score #mhdp_brachyr_arml_active AsaMatrix matches ..5 run function asa_animator:brachyr/manager/model/arml_change_to_normal
execute if score #mhdp_brachyr_arml_active AsaMatrix matches ..-1 run scoreboard players set #mhdp_brachyr_arml_active AsaMatrix 0