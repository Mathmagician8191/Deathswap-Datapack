# Get player amount
execute as @a run scoreboard players add #players players 1

# Gamerules
gamerule doDaylightCycle true
gamerule doMobSpawning true
gamerule doWeatherCycle true

# Confirmation Message
tellraw @a {"text":"Deathswap Started!","color":"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Schedule the Swap
schedule function deathswap:swap/init 300s