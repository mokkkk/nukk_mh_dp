
tag @s remove IsAnger
scoreboard players set #mhdp_nazuti_anger_count AsaMatrix 0
scoreboard players operation #mhdp_nazuti_anger_damage AsaMatrix = #mhdp_nazuti_anger_damage_max AsaMatrix
# ボスバー設定
    bossbar set asa_animator:nazuti_health name [{"text": "霞龍"},{"text":"\uE000","font":"mhdp"}]
    execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run bossbar set asa_animator:nazuti_health name [{"score":{"name":"#mhdp_nazuti_font","objective":"AsaMatrix"},"font": "mhdp_teo"},{"text": "\uF80E","font": "default"},{"text": "霞龍","font": "default"},{"text":"\uE000","font":"mhdp"},{"text": "\uF82E","font": "default"}]