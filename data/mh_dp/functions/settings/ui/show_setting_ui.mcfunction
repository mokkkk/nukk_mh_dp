
execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
gamerule sendCommandFeedback false

tellraw @a {"text": "==========================================\n\nMH_DP Settings\n","color": "light_purple"}

tellraw @a {"text": " - モンスターの自然スポーン","color": "light_purple"}
execute if data storage mh_dp:settings {Custom:{EnableBossSpawn:true}} run tellraw @a [{"text": " ---  ","color": "light_purple"},{"text": "[有効]       ","color": "aqua","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/spawn/enable"}},{"text": "[無効]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/spawn/disable"}}]
execute if data storage mh_dp:settings {Custom:{EnableBossSpawn:false}} run tellraw @a [{"text": " ---  ","color": "light_purple"},{"text": "[有効]       ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/spawn/enable"}},{"text": "[無効]","color": "aqua","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/spawn/disable"}}]

tellraw @a {"text": "\n - モンスターの攻撃力倍率","color": "light_purple"}
tellraw @a [{"text": " ---  ","color": "light_purple"},{"score":{"name":"#mhdp_attack_multiply","objective":"AsaMatrix","color": "light_purple"}},{"text": " % ","color": "light_purple"}]
tellraw @a [{"text": " ---  ","color": "light_purple"},{"text": "[-100%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/atk/100_m"}},{"text": "[-50%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/atk/50_m"}},{"text": "[-10%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/atk/10_m"}},{"text": "[〇]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/atk/reset"}},{"text": "[+10%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/atk/10_p"}},{"text": "[+50%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/atk/50_p"}},{"text": "[+100%]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/atk/100_p"}}]

tellraw @a {"text": "\n - モンスターのHP倍率","color": "light_purple"}
tellraw @a [{"text": " ---  ","color": "light_purple"},{"score":{"name":"#mhdp_hp_multiply","objective":"AsaMatrix","color": "light_purple"}},{"text": " % ","color": "light_purple"}]
tellraw @a [{"text": " ---  ","color": "light_purple"},{"text": "[-100%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/hp/100_m"}},{"text": "[-50%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/hp/50_m"}},{"text": "[-10%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/hp/10_m"}},{"text": "[〇]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/hp/reset"}},{"text": "[+10%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/hp/10_p"}},{"text": "[+50%]  ","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/hp/50_p"}},{"text": "[+100%]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function mh_dp:settings/status/hp/100_p"}}]

tellraw @a {"text": "\n==========================================","color": "light_purple"}

schedule function mh_dp:settings/ui/set_gamerule 2t replace