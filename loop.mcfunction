# Giving the items scoreboard numbers
scoreboard players set @e[type=item] items 1 {Item:{id:"minecraft:paper",Count:1b}}
scoreboard players set @e[type=item] items 2 {Item:{id:"minecraft:gold_nugget",Count:8b}}
scoreboard players set @e[type=item] items 3 {Item:{id:"minecraft:ender_pearl",Count:1b}}
scoreboard players set @e[type=item] items 4 {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:"Magic Paper",Lore:["Crafting Item","","Requies Magic LvL 5"]},HideFlags:1,ench:[{id:0,lvl:1}]}}}
scoreboard players set @e[type=item] items 5 {Item:{id:"minecraft:bowl",Count:1b}}
scoreboard players set @e[type=item] items 6 {Item:{id:"minecraft:stick",Count:1b}}
scoreboard players set @e[type=item] items 7 {Item:{id:"minecraft:coal",Count:1b}}
scoreboard players set @e[type=item] items 8 {Item:{id:"minecraft:glowstone_dust",Count:8b}}
scoreboard players set @e[type=item] items 9 {Item:{id:"minecraft:coal",Count:1b,tag:{display:{Name:"Charged Coal",Lore:["Crafting Item","","Requires Magic Lvl 2"]},HideFlags:1,ench:[{id:0,lvl:1}]}}}

# Making of the Magic PaPer
execute @a[score_magiclvl_min=5] ~ ~ ~ execute @e[type=item,score_items_min=1,score_items=1,r=5] ~ ~ ~ execute @e[type=item,score_items_min=2,score_items=2,r=1] ~ ~ ~ execute @e[type=item,score_items_min=3,score_items=3,r=1] ~ ~ ~ /summon item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:"Magic Paper",Lore:["Crafting Item","","Requies Magic LvL 5"]},HideFlags:1,ench:[{id:0,lvl:1}]}}}
execute @a[score_magiclvl_min=5] ~ ~ ~ execute @e[type=item,score_items_min=1,score_items=1,r=5] ~ ~ ~ execute @e[type=item,score_items_min=2,score_items=2,r=1] ~ ~ ~ execute @e[type=item,score_items_min=3,score_items=3,r=1] ~ ~ ~ /particle largesmoke ~ ~ ~ 0 0 0 0.1 20
execute @a[score_magiclvl_min=5] ~ ~ ~ execute @e[type=item,score_items_min=1,score_items=1,r=5] ~ ~ ~ execute @e[type=item,score_items_min=2,score_items=2,r=1] ~ ~ ~ execute @e[type=item,score_items_min=3,score_items=3,r=1] ~ ~ ~ /playsound entity.firework.blast master @a[r=5] ~ ~ ~ 1 0
execute @a[score_magiclvl_min=5] ~ ~ ~ execute @e[type=item,score_items_min=1,score_items=1,r=5] ~ ~ ~ execute @e[type=item,score_items_min=2,score_items=2,r=1] ~ ~ ~ execute @e[type=item,score_items_min=3,score_items=3,r=1] ~ ~ ~ /kill @e[type=item,r=2,score_items_min=0,score_items=3]

# Making of the Pestal
execute @a[score_gatheringlvl_min=1] ~ ~ ~ execute @e[type=item,score_items=min=5,score_items=5,r=5] ~ ~ ~ execute @e[type=item,score_items_min=6,score_items=6,r=1] ~ ~ ~ /summon item ~ ~ ~ {Item:{id:"minecraft:bowl",Count:1b,tag:{display:{Name:"Pestal",Lore:["Crafting Item","","Requies: Gathering LvL 1"]},HideFlags:1,ench:[{id:0,lvl:1}]}}}
execute @a[score_gatheringlvl_min=1] ~ ~ ~ execute @e[type=item,score_items=min=5,score_items=5,r=5] ~ ~ ~ execute @e[type=item,score_items_min=6,score_items=6,r=1] ~ ~ ~ /particle largesmoke ~ ~ ~ 0 0 0 0.1 20
execute @a[score_gatheringlvl_min=1] ~ ~ ~ execute @e[type=item,score_items=min=5,score_items=5,r=5] ~ ~ ~ execute @e[type=item,score_items_min=6,score_items=6,r=1] ~ ~ ~ /playsound entity.firework.blast master @a[r=5] ~ ~ ~ 1 0
execute @a[score_gatheringlvl_min=1] ~ ~ ~ execute @e[type=item,score_items=min=5,score_items=5,r=5] ~ ~ ~ execute @e[type=item,score_items_min=6,score_items=6,r=1] ~ ~ ~ /kill @e[type=item,r=2,score_items_min=5,score_items=6]

# Making of the Charged Coal
execute @e[score_magiclvl_min=2] ~ ~ ~ execute @e[type=item,score_items_min=7,score_items=7,r=5] ~ ~ ~ execute @e[type=item,score_items_min=8,score_items=8,r=1] ~ ~ ~ /summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b,tag:{display:{Name:"Charged Coal",Lore:["Crafting Item","","Requires Magic Lvl 2"]},HideFlags:1,ench:[{id:0,lvl:1}]}}}
execute @e[score_magiclvl_min=2] ~ ~ ~ execute @e[type=item,score_items_min=7,score_items=7,r=5] ~ ~ ~ execute @e[type=item,score_items_min=8,score_items=8,r=1] ~ ~ ~ /particle largesmoke ~ ~ ~ 0 0 0 0.1 20
execute @e[score_magiclvl_min=2] ~ ~ ~ execute @e[type=item,score_items_min=7,score_items=7,r=5] ~ ~ ~ execute @e[type=item,score_items_min=8,score_items=8,r=1] ~ ~ ~ /playsound entity.firework.blast master @a[r=5] ~ ~ ~ 1 0
execute @e[score_magiclvl_min=2] ~ ~ ~ execute @e[type=item,score_items_min=7,score_items=7,r=5] ~ ~ ~ execute @e[type=item,score_items_min=8,score_items=8,r=1] ~ ~ ~ /kill @e[type=item,r=2,score_items_min=7,score_items=8]

# execute @e[score_magiclvl_min=6] ~ ~ ~ execute @e[type=item,score_items_min=9,score_items=9,r=5] ~ ~ ~ execute @s ~ ~ ~ detect ~ ~-1 ~ magma * execute @s ~ ~ ~ detect ~ ~-2 ~ magma * execute @s ~ ~ ~ detect ~ ~-3 ~ magma * execute @s ~ ~ ~ detect ~1 ~-1 ~ cobblestone * execute @s ~ ~ ~ detect ~-1 ~-1 ~ cobblestone * execute @s ~ ~ ~ detect ~ ~-1 ~1 cobblestone * execute @s ~ ~ ~ detect ~ ~-1 ~-1 cobblestone * execute @s ~ ~ ~ detect ~1 ~-2 ~ iron_bars * execute @s ~ ~ ~ detect ~-1 ~-2 ~ iron_bars * execute @s 

# Making of the Magical Crafting Table
execute @a[score_magiclvl_min=6] ~ ~ ~ execute @e[type=item,score_items_min=9,score_items=9,r=5] ~ ~ ~ execute @e[type=item,score_items_min=4,score_items=4,r=2] ~ ~ ~ execute @s ~ ~ ~ detect ~ ~-1 ~ enchanting_table * execute @s ~ ~ ~ detect ~ ~-2 ~ dispenser 1 /summon armor_stand ~ ~-2 ~ {Invisible:1,Marker:1,CustomName:"MagicalCrafting"}
execute @a[score_magiclvl_min=6] ~ ~ ~ execute @e[type=item,score_items_min=9,score_items=9,r=5] ~ ~ ~ execute @e[type=item,score_items_min=4,score_items=4,r=2] ~ ~ ~ execute @s ~ ~ ~ detect ~ ~-1 ~ enchanting_table * execute @s ~ ~ ~ detect ~ ~-2 ~ dispenser 1 /blockdata ~ ~-2 ~ {CustomName:"MagicalCrafting"}
execute @a[score_magiclvl_min=6] ~ ~ ~ execute @e[type=item,score_items_min=9,score_items=9,r=5] ~ ~ ~ execute @e[type=item,score_items_min=4,score_items=4,r=2] ~ ~ ~ execute @s ~ ~ ~ detect ~ ~-1 ~ enchanting_table * execute @s ~ ~ ~ detect ~ ~-2 ~ dispenser 1 /tellraw @a[r=25] ["",{"text":"Magical Crafting","color":"dark_purple"},{"text":" table was constructed. In this guide, I will show you how to use this machine.\nFirst, you'll need to collect some basic materials, like "},{"text":"feathers, sticks and flint","color":"gray"},{"text":".\nTo use this table you don't need any "},{"text":"magic levels","color":"dark_purple"},{"text":".\n\nYou can find more information on the "},{"text":"WIKI","bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Gobli989/CCC/wiki"},"hoverEvent":{"action":"show_text","value":"Click here to go to the wiki page."}},{"text":" ","bold":true,"color":"aqua"},{"text":"page.\n"},{"text":"Click on the blue shiny text to go to the wiki.","italic":true,"color":"gray"}]
execute @a[score_magiclvl_min=6] ~ ~ ~ execute @e[type=item,score_items_min=9,score_items=9,r=5] ~ ~ ~ execute @e[type=item,score_items_min=4,score_items=4,r=2] ~ ~ ~ execute @s ~ ~ ~ detect ~ ~-1 ~ enchanting_table * execute @s ~ ~ ~ detect ~ ~-2 ~ dispenser 1 /particle hugeexplosion ~ ~ ~ 0 0 0 0.1 1
execute @a[score_magiclvl_min=6] ~ ~ ~ execute @e[type=item,score_items_min=9,score_items=9,r=5] ~ ~ ~ execute @e[type=item,score_items_min=4,score_items=4,r=2] ~ ~ ~ execute @s ~ ~ ~ detect ~ ~-1 ~ enchanting_table * execute @s ~ ~ ~ detect ~ ~-2 ~ dispenser 1 kill @e[type=item,r=3]

# Magical Crafting table things
execute @e[type=armor_stand,name=MagicalCrafting] ~ ~ ~ /setblock ~ ~1 ~ air 0 destroy
execute @e[type=armor_stand,name=MagicalCrafting] ~ ~ ~ detect ~ ~ ~ air * /summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b,tag:{display:{Name:"Charged Coal",Lore:["Crafting Item","","Requires Magic Lvl 2"]},HideFlags:1,ench:[{id:0,lvl:1}]}},Motion:[0.0,0.5,0.0]}
execute @e[type=armor_stand,name=MagicalCrafting] ~ ~ ~ detect ~ ~ ~ air * /summon item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:"Magic Paper",Lore:["Crafting Item","","Requies Magic LvL 5"]},HideFlags:1,ench:[{id:0,lvl:1}]}},Motion:[0.0,0.5,0.0]}
execute @e[type=armor_stand,name=MagicalCrafting] ~ ~ ~ detect ~ ~ ~ air * /kill @s
