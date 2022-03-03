
scoreboard players set #mhdp_kushala_actcount_phase AsaMatrix 0
execute if score #mhdp_kushala_lv AsaMatrix matches 2.. if predicate asa_animator:random/050 run function asa_animator:kushala/manager/change_normal/_/start_fly
execute if predicate asa_animator:kushala/stay if entity @e[tag=KushalaAttackTarget,distance=..11] if predicate asa_animator:random/050 run tag @s add AnmBjb
execute if predicate asa_animator:kushala/stay run function asa_animator:kushala/manager/change_normal/_/start_fly