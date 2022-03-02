scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=RukoParts] run function #asa_matrix:animate_reset
tag @s remove AnmMagne0
tag @s add AnmMagne1
tag @e[tag=RukoAttackTarget] remove RukoAttackTarget
tag @e[tag=MhdpDHit,sort=random,limit=1] add RukoAttackTarget