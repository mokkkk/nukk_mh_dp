
# パーティクル
    execute if entity @s[scores={MhdpTSneak=20}] run function mh_dp:weapon/sneak/particle
    execute if entity @s[scores={MhdpTSneak=40}] run function mh_dp:weapon/sneak/particle
    execute if entity @s[scores={MhdpTSneak=60}] run function mh_dp:weapon/sneak/particle
    execute if entity @s[scores={MhdpTSneak=80}] run function mh_dp:weapon/sneak/particle

# 切れ味更新
    execute if entity @s[tag=CharmGrinder,tag=!BlightDragon,scores={MhdpTSneak=40}] run function mh_dp:weapon/sneak/sharpness/main
    execute if entity @s[scores={MhdpTSneak=80}] run function mh_dp:weapon/sneak/sharpness/main