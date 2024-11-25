# Scoreboards
scoreboard objectives add players dummy
scoreboard objectives add countdown dummy
scoreboard objectives add deaths deathCount

# Gamerules
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule spectatorsGenerateChunks false
gamerule playersSleepingPercentage 1

# Teams
team add be_nice
team modify be_nice friendlyFire false
team join be_nice @a

# Confirmation Message
tellraw @a {"text":"Reload Successful!","color":"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s