# Setting up the scoreboards
scoreboard objectives add items dummy
scoreboard objectives add magiclvl dummy
scoreboard objectives add attacklvl dummy
scoreboard objectives add mininglvl dummy
scoreboard objectives add gatheringlvl dummy
scoreboard objectives add buildinglvl dummy
scoreboard objectives add agilitylvl dummy

# Setting the gamerules
gamerule gameLoopFunction ccc:loop
gamerule commandBlockOutput false

 # End message
title @a subtitle ["",{"text":"Everything is working now!"},{"text":" Hopefully.","italic":true,"color":"gray"}]
title @a title {"text":"\u2b27 Setup Completed! \u2b27","color":"green"}
