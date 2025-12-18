# Grant access to verified player

# Mark as verified
scoreboard players set @s verified 1

# Remove all restriction effects
effect clear @s minecraft:slowness
effect clear @s minecraft:blindness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:jump_boost

# Switch to survival mode
gamemode survival @s

# Teleport to spawn point
tp @s 0 100 0

# Clear join_time scores
scoreboard players reset @s join_time

# Success message
tellraw @s [{"text":"\n===========================================\n","color":"green","bold":true},{"text":"✓ VERIFICATION SUCCESSFUL ✓\n\n","color":"dark_green","bold":true},{"text":"Welcome to the world!\n","color":"yellow"},{"text":"You now have full access.\n","color":"white"},{"text":"===========================================\n","color":"green","bold":true}]

# Announce to other players (optional)
tellraw @a[scores={verified=1..}] [{"text":"[","color":"gray"},{"text":"SYSTEM","color":"green"},{"text":"] ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" has been verified.","color":"white"}]

# Play success sound
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1
