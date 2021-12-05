
scoreboard players add #mhdp_brachyr_head_active AsaMatrix 1
scoreboard players add #mhdp_brachyr_arml_active AsaMatrix 1
scoreboard players add #mhdp_brachyr_armr_active AsaMatrix 1
scoreboard players add #mhdp_brachyr_tail_active AsaMatrix 1

execute unless entity @s[tag=ActiveHead] if score #mhdp_brachyr_head_active AsaMatrix matches 6.. run function asa_animator:brachyr/manager/model/head_change_to_active
execute unless entity @s[tag=ActiveArmL] if score #mhdp_brachyr_arml_active AsaMatrix matches 6.. run function asa_animator:brachyr/manager/model/arml_change_to_active
execute unless entity @s[tag=ActiveArmR] if score #mhdp_brachyr_armr_active AsaMatrix matches 6.. run function asa_animator:brachyr/manager/model/armr_change_to_active
execute unless entity @s[tag=ActiveTail] if score #mhdp_brachyr_tail_active AsaMatrix matches 6.. run function asa_animator:brachyr/manager/model/tail_change_to_active

execute if score #mhdp_brachyr_head_active AsaMatrix matches 13.. run scoreboard players set #mhdp_brachyr_head_active AsaMatrix 12
execute if score #mhdp_brachyr_arml_active AsaMatrix matches 13.. run scoreboard players set #mhdp_brachyr_arml_active AsaMatrix 12
execute if score #mhdp_brachyr_armr_active AsaMatrix matches 13.. run scoreboard players set #mhdp_brachyr_armr_active AsaMatrix 12
execute if score #mhdp_brachyr_tail_active AsaMatrix matches 13.. run scoreboard players set #mhdp_brachyr_tail_active AsaMatrix 12