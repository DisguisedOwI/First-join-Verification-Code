# Initialize scoreboards
scoreboard objectives add verified dummy "Verified Players"
scoreboard objectives add verify trigger "Verification Code"
scoreboard objectives add join_time dummy "Join Timestamp"

# Set all new players to unverified (0) by default
# Important Note I don't remember if this code below does anything but I'm too scared to touch it
execute as @a unless score @s verified matches 0.. run scoreboard players set @s verified 0

# Enable verification trigger for all unverified players
execute as @a[scores={verified=0}] run scoreboard players enable @s verify

tellraw @a [{"text":"[","color":"gold"},{"text":"CODE SYSTEM","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Code verification system initialized!","color":"gold"}]
