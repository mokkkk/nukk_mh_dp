
execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
gamerule sendCommandFeedback false

tellraw @a {"text": "==========================================\n\nMH_DP Summon","color": "light_purple"}

tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[火竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:reus/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[雌火竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:reia/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[角竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:diablos/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[雷狼竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:zinogre/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[迅竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:narga/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[斬竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:dyno/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[砕竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:brachy/manager/summon"}}]
execute if data storage mh_dp:status {Monster:{Win:{BrachyR:true}}} run tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[猛り爆ぜる砕竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:brachyr/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[轟竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:tiga/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[鋼龍]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:kushala/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[炎王龍]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:teo/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[霞龍]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:nazuti/manager/summon"}}]

tellraw @a {"text": "\n==========================================","color": "light_purple"}

schedule function mh_dp:settings/ui/set_gamerule 2t replace
