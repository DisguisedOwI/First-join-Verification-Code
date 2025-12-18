# Configuration

### Changing the Verification Code
- To change the verification code, edit [verify_process.mcfunction](data/pack/function/verify_process.mcfunction).
Modify lines 4 and 7 as needed.
The current code is `7326742`.

### Changing the Spawn Point
- To change the spawn point, edit [grant_access.mcfunction](data/pack/function/grant_access.mcfunction).
Update the coordinates on line 16.
The current spawn point is at `0 100 0`.

### Resetting a Player’s Verification Status

* To manually reset a player’s verification status, run the following command:

```
/scoreboard players reset <username> verified
```

Useless Details
* Pack format: 48 (Minecraft 1.21.10)
* Uses scoreboards: `verified`, `verify`, `join_time`
* Functions are tagged with `load` and `tick` for automatic execution

---

### Credits
DisguisedOwl - [Modrinth](https://modrinth.com/user/DisguisedOwl) | [Github](https://github.com/DisguisedOwI)
