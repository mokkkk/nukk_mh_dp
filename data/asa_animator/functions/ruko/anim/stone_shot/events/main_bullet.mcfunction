
particle dust 1 0 0 1 ~ ~1.4 ~ 0.5 0.5 0.5 0 1 force
particle block grass_block ~ ~1.4 ~ 0.3 0.3 0.3 0 3

execute if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!RukoParts,distance=0..3] run function asa_animator:ruko/anim/stone_shot/events/damage

scoreboard players add @s AsaMatrix 1
execute unless block ^ ^1.4 ^1 #asa_animator:no_collision run scoreboard players set @s AsaMatrix 200
execute if entity @s[scores={AsaMatrix=200..}] run function asa_animator:ruko/anim/stone_shot/events/damage

tp @s ^ ^ ^1

data modify storage mh_dp: Temp.Rotate set value 0
execute store result storage mh_dp: Temp.Rotate float 3 run scoreboard players get @s AsaMatrix
data modify storage mh_dp: Temp.Pose set value [0.0f,0.0f,0.0f]
data modify storage mh_dp: Temp.Pose[0] set from storage mh_dp: Temp.Rotate
data modify entity @s Pose.Head set from storage mh_dp: Temp.Pose
data remove storage mh_dp: Temp.Rotate
data remove storage mh_dp: Temp.Pose