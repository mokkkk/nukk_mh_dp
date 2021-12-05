
scoreboard players set #mhdp_brachyr_head_active AsaMatrix 10
scoreboard players set #mhdp_brachyr_arml_active AsaMatrix 10
scoreboard players set #mhdp_brachyr_armr_active AsaMatrix 10
scoreboard players set #mhdp_brachyr_tail_active AsaMatrix 10
function asa_animator:brachyr/manager/model/head_change_to_active
function asa_animator:brachyr/manager/model/arml_change_to_active
function asa_animator:brachyr/manager/model/armr_change_to_active
execute unless entity @s[tag=DestroyTail] run function asa_animator:brachyr/manager/model/tail_change_to_active
