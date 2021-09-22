
# プレイヤー死亡時
execute if entity @s[nbt={Health:0.0f}] run function mh_dp:player/player_death

# 終了
advancement revoke @s only mh_dp:player/hurt