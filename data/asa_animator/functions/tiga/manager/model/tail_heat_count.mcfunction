
# 尻尾赤熱化
scoreboard players add #mhdp_dyno_actcount_tail AsaMatrix 1
execute if predicate asa_animator:dyno/heat run scoreboard players add #mhdp_dyno_actcount_tail AsaMatrix 1
execute if entity @s[tag=AnmTailRound] run scoreboard players add #mhdp_dyno_actcount_tail AsaMatrix 2
execute unless entity @s[tag=DestroyTail] unless entity @s[tag=IsHeatTail] unless entity @s[tag=IsSootTail] if score #mhdp_dyno_actcount_tail AsaMatrix matches 10.. run function asa_animator:dyno/manager/model/change_to_heat_tail 