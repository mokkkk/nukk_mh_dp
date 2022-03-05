
# 矢にタグを付与
execute at @s as @e[type=arrow,tag=!MhdpPierceArrow,sort=nearest,limit=1] run tag @s add MhdpPiercingArrow

# 終了
advancement revoke @s only mh_dp:player/shot_piercing_crossbow