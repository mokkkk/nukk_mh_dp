
tag @s remove IsAnger
scoreboard players set #mhdp_ruko_anger_count AsaMatrix 0
scoreboard players operation #mhdp_ruko_anger_damage AsaMatrix = #mhdp_ruko_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:ruko_health name [{"text": "極龍"},{"text":"\uE000","font":"mhdp"}]
    execute if score #mhdp_ruko_lv AsaMatrix matches 2.. run bossbar set asa_animator:ruko_health name [{"score":{"name":"#mhdp_ruko_font","objective":"AsaMatrix"},"font": "mhdp_teo"},{"text": "\uF80E","font": "default"},{"text": "極龍","font": "default"},{"text":"\uE000","font":"mhdp"},{"text": "\uF82E","font": "default"}]