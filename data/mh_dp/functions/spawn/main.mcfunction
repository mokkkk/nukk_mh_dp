
# タイマーリセット
scoreboard players set #mhdp_timer AsaMatrix 0

# 1分毎に20%の確立でボス出現
execute if data storage mh_dp:settings {Custom:{EnableBossSpawn:true}} if predicate asa_animator:random/020 if block ~ ~ ~ air unless block ~ ~ ~ cave_air run function mh_dp:spawn/select