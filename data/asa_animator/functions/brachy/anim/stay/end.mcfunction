scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=BrachyParts] run function #asa_matrix:animate_reset
execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_brachy_actcount AsaMatrix 2
execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_brachy_actcount AsaMatrix 3