# 15 Damage
data modify storage score_damage: Argument set value {Damage:36.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..19] run function asa_animator:teo/anim/supernova/events/damage_sub
data remove storage score_damage: Argument
playsound entity.generic.explode master @a ~ ~ ~ 5 0.9
playsound entity.generic.explode master @a ~ ~ ~ 5 0.8
playsound entity.generic.explode master @a ~ ~ ~ 5 0.7
playsound entity.generic.explode master @a ~ ~ ~ 5 0.6
playsound entity.generic.explode master @a ~ ~ ~ 5 0.5

particle flame ^ ^ ^ 3 3 3 1 100
particle explosion_emitter ^ ^ ^ 3 3 3 0 30

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAAwDMARvSgByUC0A7ACwBmcLHAjNV4BOfilItSAQ1r821AEzDSAVkbkCAOykBbBMkBhigAJ+YAjCkZdAZyTgUAe0KaISBZQIo4LuBjtgANylsQn1wAA8kDzAoKIBfOIIrUjRCW0R+ADYCawhLV0RouGxsNBhrfX5KaIwHPIh9aLRrAFESsoqWgEdCYOwoAGULL3JELmCKhIBdIA_3
# 円 1
particle explosion_emitter ^0 ^ ^-16 0 0 0 0 1
particle explosion_emitter ^4.94427 ^ ^-15.2169 0 0 0 0 1
particle explosion_emitter ^9.40456 ^ ^-12.94427 0 0 0 0 1
particle explosion_emitter ^12.94427 ^ ^-9.40456 0 0 0 0 1
particle explosion_emitter ^15.2169 ^ ^-4.94427 0 0 0 0 1
particle explosion_emitter ^16 ^ ^0 0 0 0 0 1
particle explosion_emitter ^15.2169 ^ ^4.94427 0 0 0 0 1
particle explosion_emitter ^12.94427 ^ ^9.40456 0 0 0 0 1
particle explosion_emitter ^9.40456 ^ ^12.94427 0 0 0 0 1
particle explosion_emitter ^4.94427 ^ ^15.2169 0 0 0 0 1
particle explosion_emitter ^0 ^ ^16 0 0 0 0 1
particle explosion_emitter ^-4.94427 ^ ^15.2169 0 0 0 0 1
particle explosion_emitter ^-9.40456 ^ ^12.94427 0 0 0 0 1
particle explosion_emitter ^-12.94427 ^ ^9.40456 0 0 0 0 1
particle explosion_emitter ^-15.2169 ^ ^4.94427 0 0 0 0 1
particle explosion_emitter ^-16 ^ ^0 0 0 0 0 1
particle explosion_emitter ^-15.2169 ^ ^-4.94427 0 0 0 0 1
particle explosion_emitter ^-12.94427 ^ ^-9.40456 0 0 0 0 1
particle explosion_emitter ^-9.40456 ^ ^-12.94427 0 0 0 0 1
particle explosion_emitter ^-4.94427 ^ ^-15.2169 0 0 0 0 1

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAAwDMARvSgByUC0A7ACwBmcLHAjNV4BOfilItSAQ1r821AEzDSAVkbkCAOykBbBMkBhigAJ+YAjCkZdAZyTgUAe0KaISfgDYCKOC7gY7YABuUtiE+uAAHkiUBFDRAL7xBFakaIS2iIIE1hCWrogxYHDY2Ggw1vr8lIUYDrkQ+oVo1gCiJWUVLQCOhCHYUADKFt7kiFwhFYkAukA_3
# 円 1
particle explosion_emitter ^0 ^-3 ^-13 0 0 0 0 1
particle explosion_emitter ^4.97488 ^-3 ^-12.01043 0 0 0 0 1
particle explosion_emitter ^9.19239 ^-3 ^-9.19239 0 0 0 0 1
particle explosion_emitter ^12.01043 ^-3 ^-4.97488 0 0 0 0 1
particle explosion_emitter ^13 ^-3 ^0 0 0 0 0 1
particle explosion_emitter ^12.01043 ^-3 ^4.97488 0 0 0 0 1
particle explosion_emitter ^9.19239 ^-3 ^9.19239 0 0 0 0 1
particle explosion_emitter ^4.97488 ^-3 ^12.01043 0 0 0 0 1
particle explosion_emitter ^0 ^-3 ^13 0 0 0 0 1
particle explosion_emitter ^-4.97488 ^-3 ^12.01043 0 0 0 0 1
particle explosion_emitter ^-9.19239 ^-3 ^9.19239 0 0 0 0 1
particle explosion_emitter ^-12.01043 ^-3 ^4.97488 0 0 0 0 1
particle explosion_emitter ^-13 ^-3 ^0 0 0 0 0 1
particle explosion_emitter ^-12.01043 ^-3 ^-4.97488 0 0 0 0 1
particle explosion_emitter ^-9.19239 ^-3 ^-9.19239 0 0 0 0 1
particle explosion_emitter ^-4.97488 ^-3 ^-12.01043 0 0 0 0 1
particle explosion_emitter ^0 ^3 ^-13 0 0 0 0 1
particle explosion_emitter ^4.97488 ^3 ^-12.01043 0 0 0 0 1
particle explosion_emitter ^9.19239 ^3 ^-9.19239 0 0 0 0 1
particle explosion_emitter ^12.01043 ^3 ^-4.97488 0 0 0 0 1
particle explosion_emitter ^13 ^3 ^0 0 0 0 0 1
particle explosion_emitter ^12.01043 ^3 ^4.97488 0 0 0 0 1
particle explosion_emitter ^9.19239 ^3 ^9.19239 0 0 0 0 1
particle explosion_emitter ^4.97488 ^3 ^12.01043 0 0 0 0 1
particle explosion_emitter ^0 ^3 ^13 0 0 0 0 1
particle explosion_emitter ^-4.97488 ^3 ^12.01043 0 0 0 0 1
particle explosion_emitter ^-9.19239 ^3 ^9.19239 0 0 0 0 1
particle explosion_emitter ^-12.01043 ^3 ^4.97488 0 0 0 0 1
particle explosion_emitter ^-13 ^3 ^0 0 0 0 0 1
particle explosion_emitter ^-12.01043 ^3 ^-4.97488 0 0 0 0 1
particle explosion_emitter ^-9.19239 ^3 ^-9.19239 0 0 0 0 1
particle explosion_emitter ^-4.97488 ^3 ^-12.01043 0 0 0 0 1

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAAwDMARvSgByUC0A7ACwBmcLHAjNV4BOfilItSAQ1r821AEzDSAVkbkCAOykBbBMkBhigAJ+YAjCkZdAZyTgUAe0KaISfgoIo4LuBjtgANylsQn1wAA8kSgIoKIBfOIIrUjRCW0R+aLBrCEtXRCy4bGw0GGt9TKyMB1yIfSy0awBRYtLypoBHQmDsKABlCy9yRC5g8oSAXSA_3
# 円 1
particle explosion_emitter ^0 ^-6 ^-10 0 0 0 0 1
particle explosion_emitter ^5 ^-6 ^-8.66025 0 0 0 0 1
particle explosion_emitter ^8.66025 ^-6 ^-5 0 0 0 0 1
particle explosion_emitter ^10 ^-6 ^0 0 0 0 0 1
particle explosion_emitter ^8.66025 ^-6 ^5 0 0 0 0 1
particle explosion_emitter ^5 ^-6 ^8.66025 0 0 0 0 1
particle explosion_emitter ^0 ^-6 ^10 0 0 0 0 1
particle explosion_emitter ^-5 ^-6 ^8.66025 0 0 0 0 1
particle explosion_emitter ^-8.66025 ^-6 ^5 0 0 0 0 1
particle explosion_emitter ^-10 ^-6 ^0 0 0 0 0 1
particle explosion_emitter ^-8.66025 ^-6 ^-5 0 0 0 0 1
particle explosion_emitter ^-5 ^-6 ^-8.66025 0 0 0 0 1
particle explosion_emitter ^0 ^6 ^-10 0 0 0 0 1
particle explosion_emitter ^5 ^6 ^-8.66025 0 0 0 0 1
particle explosion_emitter ^8.66025 ^6 ^-5 0 0 0 0 1
particle explosion_emitter ^10 ^6 ^0 0 0 0 0 1
particle explosion_emitter ^8.66025 ^6 ^5 0 0 0 0 1
particle explosion_emitter ^5 ^6 ^8.66025 0 0 0 0 1
particle explosion_emitter ^0 ^6 ^10 0 0 0 0 1
particle explosion_emitter ^-5 ^6 ^8.66025 0 0 0 0 1
particle explosion_emitter ^-8.66025 ^6 ^5 0 0 0 0 1
particle explosion_emitter ^-10 ^6 ^0 0 0 0 0 1
particle explosion_emitter ^-8.66025 ^6 ^-5 0 0 0 0 1
particle explosion_emitter ^-5 ^6 ^-8.66025 0 0 0 0 1

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAAwDMARvSgByUC0A7ACwBmcLHAjNV4BOfilItSAQ1r821AEzDSAVkbkCAOykBbBMkBhigAJ+YAjCkZdAZyTgUAe0KaISRgRRwXcDHbAA3KWxCfXAADyRKAihIgF9YgitSNEJbRDYCawhLV0QosDhsbDQYa31+SnyMB2yIfXy0awBRIpKypoBHQiDsKABlC09yRC4gsviAXSA_3
# 円 1
particle explosion_emitter ^0 ^-9 ^-7 0 0 0 0 1
particle explosion_emitter ^4.94975 ^-9 ^-4.94975 0 0 0 0 1
particle explosion_emitter ^7 ^-9 ^0 0 0 0 0 1
particle explosion_emitter ^4.94975 ^-9 ^4.94975 0 0 0 0 1
particle explosion_emitter ^0 ^-9 ^7 0 0 0 0 1
particle explosion_emitter ^-4.94975 ^-9 ^4.94975 0 0 0 0 1
particle explosion_emitter ^-7 ^-9 ^0 0 0 0 0 1
particle explosion_emitter ^-4.94975 ^-9 ^-4.94975 0 0 0 0 1
particle explosion_emitter ^0 ^9 ^-7 0 0 0 0 1
particle explosion_emitter ^4.94975 ^9 ^-4.94975 0 0 0 0 1
particle explosion_emitter ^7 ^9 ^0 0 0 0 0 1
particle explosion_emitter ^4.94975 ^9 ^4.94975 0 0 0 0 1
particle explosion_emitter ^0 ^9 ^7 0 0 0 0 1
particle explosion_emitter ^-4.94975 ^9 ^4.94975 0 0 0 0 1
particle explosion_emitter ^-7 ^9 ^0 0 0 0 0 1
particle explosion_emitter ^-4.94975 ^9 ^-4.94975 0 0 0 0 1

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAAwDMARvSgByUC0A7ACwBmcLHAjNV4BOfilItSAQ1r821AEzDSAVkbkCAOykBbBMkBhigAJ+YAjCkZdAZyTgUAe0KaISFQRRwXcDHbAA3KWxCfXAADyRKAihIgF9YgitSNEJbRA4CawhLV0QosDhsbDQYa31+SnyMB2yIfXy0awBRIpKypoBHQiDsKABlC09yRC4gsviAXSA_3
# 円 1
particle explosion_emitter ^0 ^-12 ^-4 0 0 0 0 1
particle explosion_emitter ^3.80423 ^-12 ^-1.23607 0 0 0 0 1
particle explosion_emitter ^2.35114 ^-12 ^3.23607 0 0 0 0 1
particle explosion_emitter ^-2.35114 ^-12 ^3.23607 0 0 0 0 1
particle explosion_emitter ^-3.80423 ^-12 ^-1.23607 0 0 0 0 1
particle explosion_emitter ^0 ^12 ^-4 0 0 0 0 1
particle explosion_emitter ^3.80423 ^12 ^-1.23607 0 0 0 0 1
particle explosion_emitter ^2.35114 ^12 ^3.23607 0 0 0 0 1
particle explosion_emitter ^-2.35114 ^12 ^3.23607 0 0 0 0 1
particle explosion_emitter ^-3.80423 ^12 ^-1.23607 0 0 0 0 1

particle explosion_emitter ^0 ^-16 ^ 0 0 0 0 1
particle explosion_emitter ^0 ^16 ^ 0 0 0 0 1

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmHABwAMpKNALCgLQCsjA7Jy4wMx82LAIYA2RjRYBOUlPEAmUhzgqwBAHbCAtgmSAwxQAEARjVgYwjNoDOScCgD2hdRCRsaBFHGdwMtsADdhbEJdcAAPJHcwKEiAX1iCS1I0QhtEIyoCKwgLF0QouGxsNBgrXSMaKIx7HIhdKLQrAFEikrKmgEdCIOwoAGVzT3JEADMgsviAXSA_3
# 円 1
particle flame ^0 ^ ^-18 0.5 0.5 0.5 0.1 10
particle flame ^2.256 ^ ^-17.85806 0.5 0.5 0.5 0.1 10
particle flame ^4.47642 ^ ^-17.4345 0.5 0.5 0.5 0.1 10
particle flame ^6.62624 ^ ^-16.73598 0.5 0.5 0.5 0.1 10
particle flame ^8.67157 ^ ^-15.77352 0.5 0.5 0.5 0.1 10
particle flame ^10.58013 ^ ^-14.56231 0.5 0.5 0.5 0.1 10
particle flame ^12.32185 ^ ^-13.12144 0.5 0.5 0.5 0.1 10
particle flame ^13.86924 ^ ^-11.47363 0.5 0.5 0.5 0.1 10
particle flame ^15.1979 ^ ^-9.64488 0.5 0.5 0.5 0.1 10
particle flame ^16.28689 ^ ^-7.66403 0.5 0.5 0.5 0.1 10
particle flame ^17.11902 ^ ^-5.56231 0.5 0.5 0.5 0.1 10
particle flame ^17.68117 ^ ^-3.37286 0.5 0.5 0.5 0.1 10
particle flame ^17.96448 ^ ^-1.13023 0.5 0.5 0.5 0.1 10
particle flame ^17.96448 ^ ^1.13023 0.5 0.5 0.5 0.1 10
particle flame ^17.68117 ^ ^3.37286 0.5 0.5 0.5 0.1 10
particle flame ^17.11902 ^ ^5.56231 0.5 0.5 0.5 0.1 10
particle flame ^16.28689 ^ ^7.66403 0.5 0.5 0.5 0.1 10
particle flame ^15.1979 ^ ^9.64488 0.5 0.5 0.5 0.1 10
particle flame ^13.86924 ^ ^11.47363 0.5 0.5 0.5 0.1 10
particle flame ^12.32185 ^ ^13.12144 0.5 0.5 0.5 0.1 10
particle flame ^10.58013 ^ ^14.56231 0.5 0.5 0.5 0.1 10
particle flame ^8.67157 ^ ^15.77352 0.5 0.5 0.5 0.1 10
particle flame ^6.62624 ^ ^16.73598 0.5 0.5 0.5 0.1 10
particle flame ^4.47642 ^ ^17.4345 0.5 0.5 0.5 0.1 10
particle flame ^2.256 ^ ^17.85806 0.5 0.5 0.5 0.1 10
particle flame ^0 ^ ^18 0.5 0.5 0.5 0.1 10
particle flame ^-2.256 ^ ^17.85806 0.5 0.5 0.5 0.1 10
particle flame ^-4.47642 ^ ^17.4345 0.5 0.5 0.5 0.1 10
particle flame ^-6.62624 ^ ^16.73598 0.5 0.5 0.5 0.1 10
particle flame ^-8.67157 ^ ^15.77352 0.5 0.5 0.5 0.1 10
particle flame ^-10.58013 ^ ^14.56231 0.5 0.5 0.5 0.1 10
particle flame ^-12.32185 ^ ^13.12144 0.5 0.5 0.5 0.1 10
particle flame ^-13.86924 ^ ^11.47363 0.5 0.5 0.5 0.1 10
particle flame ^-15.1979 ^ ^9.64488 0.5 0.5 0.5 0.1 10
particle flame ^-16.28689 ^ ^7.66403 0.5 0.5 0.5 0.1 10
particle flame ^-17.11902 ^ ^5.56231 0.5 0.5 0.5 0.1 10
particle flame ^-17.68117 ^ ^3.37286 0.5 0.5 0.5 0.1 10
particle flame ^-17.96448 ^ ^1.13023 0.5 0.5 0.5 0.1 10
particle flame ^-17.96448 ^ ^-1.13023 0.5 0.5 0.5 0.1 10
particle flame ^-17.68117 ^ ^-3.37286 0.5 0.5 0.5 0.1 10
particle flame ^-17.11902 ^ ^-5.56231 0.5 0.5 0.5 0.1 10
particle flame ^-16.28689 ^ ^-7.66403 0.5 0.5 0.5 0.1 10
particle flame ^-15.1979 ^ ^-9.64488 0.5 0.5 0.5 0.1 10
particle flame ^-13.86924 ^ ^-11.47363 0.5 0.5 0.5 0.1 10
particle flame ^-12.32185 ^ ^-13.12144 0.5 0.5 0.5 0.1 10
particle flame ^-10.58013 ^ ^-14.56231 0.5 0.5 0.5 0.1 10
particle flame ^-8.67157 ^ ^-15.77352 0.5 0.5 0.5 0.1 10
particle flame ^-6.62624 ^ ^-16.73598 0.5 0.5 0.5 0.1 10
particle flame ^-4.47642 ^ ^-17.4345 0.5 0.5 0.5 0.1 10
particle flame ^-2.256 ^ ^-17.85806 0.5 0.5 0.5 0.1 10