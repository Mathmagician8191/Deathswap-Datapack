# Scoreboards
scoreboard objectives remove players
scoreboard objectives remove countdown
scoreboard objectives remove deaths

# Gamerules
gamerule doDaylightCycle true
gamerule doMobSpawning true
gamerule doWeatherCycle true
gamerule logAdminCommands true
gamerule commandBlockOutput true
gamerule spectatorsGenerateChunks true
gamerule playersSleepingPercentage 100

# Clear Schedules
schedule clear deathswap:swap/calcswap
schedule clear deathswap:swap/countdown
schedule clear deathswap:swap/init

# Tags
tag @a remove out

# Teams
team leave @a
team remove be_nice

# Confirmation Message
tellraw @s {"text":"Uninstall successful","color":"green"}
execute as @s at @s run playsound minecraft:entity.experience_orb.pickup master @s