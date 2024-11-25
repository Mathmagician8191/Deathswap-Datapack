# Set the Tags
execute as @a[sort=random,limit=1,tag=!out] run tag @s add swap1
execute as @a[sort=random,limit=1,tag=!swap1,tag=!out] run tag @s add swap2
execute as @a[sort=random,limit=1,tag=!swap1,tag=!swap2,tag=!out] run tag @s add swap3
execute as @a[sort=random,limit=1,tag=!swap1,tag=!swap2,tag=!swap3,tag=!out] run tag @s add swap4
execute as @a[sort=random,limit=1,tag=!swap1,tag=!swap2,tag=!swap3,tag=!swap4,tag=!out] run tag @s add swap5
execute as @a[tag=!swap1,tag=!swap2,tag=!swap3,tag=!swap4,tag=!swap5] run tag @s add swap6

# Summon Armor Stands
execute at @a[tag=swap1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swapper1"]}
execute at @a[tag=swap2] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swapper2"]}
execute at @a[tag=swap3] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swapper3"]}
execute at @a[tag=swap4] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swapper4"]}
execute at @a[tag=swap5] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swapper5"]}
execute at @a[tag=swap6] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swapper6"]}

# Swap the Players
tp @a[tag=swap1] @e[tag=swapper2,limit=1]
tp @a[tag=swap2] @e[tag=swapper3,limit=1]
tp @a[tag=swap3] @e[tag=swapper4,limit=1]
tp @a[tag=swap4] @e[tag=swapper5,limit=1]
tp @a[tag=swap5] @e[tag=swapper6,limit=1]
tp @a[tag=swap6] @e[tag=swapper1,limit=1]

# Confirmation Message
tellraw @a {"text":"Swap!","color":"yellow"}
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s

# Kill the Armor Stands
kill @e[tag=swapper1]
kill @e[tag=swapper2]
kill @e[tag=swapper3]
kill @e[tag=swapper4]
kill @e[tag=swapper5]
kill @e[tag=swapper6]

# Remove tags
tag @a remove swap1
tag @a remove swap2
tag @a remove swap3
tag @a remove swap4
tag @a remove swap5
tag @a remove swap6