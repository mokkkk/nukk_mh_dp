scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
execute if data storage mh_dp:settings Custom{QuestRank:0} run scoreboard players set #mhdp_reus_actcount AsaMatrix 4
execute if data storage mh_dp:settings Custom{QuestRank:1} run scoreboard players set #mhdp_reus_actcount AsaMatrix 5