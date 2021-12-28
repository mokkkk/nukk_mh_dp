
execute as @a[tag=MhdpUsedHornN,limit=1,sort=random] at @s run function mh_dp:spawn/select
execute if score #mhdp_monster_count AsaMatrix matches ..1 run tellraw @a {"text":"【音に刺激され，モンスターが現れた】"}
execute if score #mhdp_monster_count AsaMatrix matches 2.. run tellraw @a {"text":"【音色はモンスターに届かなかった】"} 
execute as @a[tag=MhdpUsedHornN] run function mh_dp:item/horn_normal/clear

tag @a remove MhdpUsedHornN