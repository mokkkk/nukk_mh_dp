
execute as @e[type=wandering_trader,tag=!MhdpTrader,limit=1,sort=nearest] run function mh_dp:item/trader/add

# 終了
advancement revoke @s only mh_dp:player/interact_trader