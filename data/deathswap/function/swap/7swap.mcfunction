# Set the Tags
tag @r[tag=!out] add swap0
tag @r[tag=!out, tag=!swap0] add swap1
tag @r[tag=!out, tag=!swap0, tag=!swap1] add swap2
tag @r[tag=!out, tag=!swap0, tag=!swap1, tag=!swap2] add swap3
tag @r[tag=!out, tag=!swap0, tag=!swap1, tag=!swap2, tag=!swap3] add swap4
tag @r[tag=!out, tag=!swap0, tag=!swap1, tag=!swap2, tag=!swap3, tag=!swap4] add swap5
tag @r[tag=!out, tag=!swap0, tag=!swap1, tag=!swap2, tag=!swap3, tag=!swap4, tag=!swap5] add swap6

# Summon Armor Stands
execute at @a[tag=swap0] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap0"],NoGravity:1b}
execute at @a[tag=swap1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap1"],NoGravity:1b}
execute at @a[tag=swap2] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap2"],NoGravity:1b}
execute at @a[tag=swap3] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap3"],NoGravity:1b}
execute at @a[tag=swap4] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap4"],NoGravity:1b}
execute at @a[tag=swap5] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap5"],NoGravity:1b}
execute at @a[tag=swap6] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap6"],NoGravity:1b}

# Swap the Players
tp @a[tag=swap0] @e[tag=aswap1,limit=1]
tp @a[tag=swap1] @e[tag=aswap2,limit=1]
tp @a[tag=swap2] @e[tag=aswap3,limit=1]
tp @a[tag=swap3] @e[tag=aswap4,limit=1]
tp @a[tag=swap4] @e[tag=aswap5,limit=1]
tp @a[tag=swap5] @e[tag=aswap6,limit=1]
tp @a[tag=swap6] @e[tag=aswap0,limit=1]

# Confirmation Message
tellraw @a {"text":"Swap!","color":"yellow"}
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s
# Kill the Armor Stands
kill @e[tag=aswap0]
kill @e[tag=aswap1]
kill @e[tag=aswap2]
kill @e[tag=aswap3]
kill @e[tag=aswap4]
kill @e[tag=aswap5]
kill @e[tag=aswap6]

# Remove Tags
tag @a remove swap0
tag @a remove swap1
tag @a remove swap2
tag @a remove swap3
tag @a remove swap4
tag @a remove swap5
tag @a remove swap6
