# Set the Tags
tag @r[tag=!out] add swap0
tag @r[tag=!out, tag=!swap0] add swap1
tag @r[tag=!out, tag=!swap0, tag=!swap1] add swap2

# Summon Armor Stands
execute at @a[tag=swap0] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap0"],NoGravity:1b}
execute at @a[tag=swap1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap1"],NoGravity:1b}
execute at @a[tag=swap2] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap2"],NoGravity:1b}

# Swap the Players
tp @a[tag=swap0] @e[tag=aswap1,limit=1]
tp @a[tag=swap1] @e[tag=aswap2,limit=1]
tp @a[tag=swap2] @e[tag=aswap0,limit=1]

# Confirmation Message
tellraw @a {"text":"Swap!","color":"yellow"}
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s
# Kill the Armor Stands
kill @e[tag=aswap0]
kill @e[tag=aswap1]
kill @e[tag=aswap2]

# Remove Tags
tag @a remove swap0
tag @a remove swap1
tag @a remove swap2
