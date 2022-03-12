
scoreboard players add #mhdp_ruko_font AsaMatrix 1
execute if score #mhdp_ruko_font AsaMatrix matches 10.. run scoreboard players set #mhdp_ruko_font AsaMatrix 1

execute unless entity @s[tag=IsAnger] run bossbar set asa_animator:ruko_health name [{"score":{"name":"#mhdp_ruko_font","objective":"AsaMatrix"},"font": "mhdp_ruko"},{"text": "\uF80E","font": "default"},{"text": "極龍","font": "default"},{"text":"\uE000","font":"mhdp"},{"text": "\uF82E","font": "default"}]
execute if entity @s[tag=IsAnger] run bossbar set asa_animator:ruko_health name [{"score":{"name":"#mhdp_ruko_font","objective":"AsaMatrix"},"font": "mhdp_ruko"},{"text": "\uF80E","font": "default"},{"text": "極龍","font": "default"},{"text":"\uE001","font":"mhdp"},{"text": "\uF82E","font": "default"}]