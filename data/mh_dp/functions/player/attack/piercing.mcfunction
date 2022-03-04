
# 貫通矢消去
    execute as @e[type=slime,tag=MonsterParts,tag=AttackedEntity] at @s run function mh_dp:player/attack/piercing_

# 終了
    advancement revoke @s only mh_dp:player/attack_piercing_arrow