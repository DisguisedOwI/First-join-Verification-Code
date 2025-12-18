# Apply restrictions to unverified players

# Set to adventure mode - Fix is so you tp to spawn points ###############################################
gamemode adventure @s 
###############################################
tp @s 0 -100 0


# Apply movement prevention effects
effect give @s minecraft:slowness infinite 255 true
effect give @s minecraft:blindness infinite 0 true
effect give @s minecraft:mining_fatigue infinite 255 true
effect give @s minecraft:jump_boost infinite 128 true

# Initialize join time if not set (using game time)
execute unless score @s join_time matches 1.. store result score @s join_time run time query gametime

# Enable verification trigger
scoreboard players enable @s verify

# Show verification prompt (only once per second to avoid spam)
tellraw @s [{"text":"\n===========================================\n","color":"red","bold":true},{"text":"⚠ VERIFICATION REQUIRED ⚠\n\n","color":"gold","bold":true},{"text":"You must verify to access this world.\n","color":"yellow"},{"text":"Enter the verification code using:\n","color":"white"},{"text":"/trigger verify set <code>\n\n","color":"green","bold":true},{"text":"Contact an administrator if you need help.\n","color":"gray","italic":true},{"text":"===========================================\n","color":"red","bold":true}]