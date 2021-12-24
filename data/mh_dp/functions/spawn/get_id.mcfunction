
scoreboard players operation @s MhdpMonsterID = #mhdp_id_holder MhdpMonsterID
scoreboard players add #mhdp_id_holder MhdpMonsterID 1
execute if score #mhdp_id_holder MhdpMonsterID matches 2147483647.. run scoreboard players set #mhdp_id_holder MhdpMonsterID -2147483648