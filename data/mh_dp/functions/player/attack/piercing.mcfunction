
# 貫通矢消去
    execute as @e[type=slime,tag=MonsterParts,tag=AttackedEntity] at @s run function mh_dp:player/attack/piercing_

    execute at @e[type=slime,tag=MonsterParts,tag=AttackedEntity] run particle flame ~ ~ ~ 0 0 0 0.5 10
    execute store result score #test AsaMatrix run execute if entity @e[type=slime,tag=MonsterParts,tag=AttackedEntity]

# 終了
    advancement revoke @s only mh_dp:player/attack_piercing_arrow