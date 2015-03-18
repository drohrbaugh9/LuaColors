c = require("colors") c.initialize()
print(c.getAvailableColors())
print(c.red("C") .. c.green("O") ..c.yellow("L") .. c.blue("O") .. c.purple("R") .. c.cyan("S"))
print(c.multipleColors({{"C","red",""},{"O","green",""},{"L","yellow",""},{"O","blue",""},{"R","purple",""},{"S","cyan",""}},""))

local bc = "red"
print(c.multipleColors({{"C","red",bc},{"O","green",bc},{"L","yellow",bc},{"O","blue",bc},{"R","purple",bc},{"S","cyan",bc}},""))

bc = "green"
print(c.multipleColors({{"C","red",bc},{"O","green",bc},{"L","yellow",bc},{"O","blue",bc},{"R","purple",bc},{"S","cyan",bc}},""))

bc = "yellow"
print(c.multipleColors({{"C","red",bc},{"O","green",bc},{"L","yellow",bc},{"O","blue",bc},{"R","purple",bc},{"S","cyan",bc}},""))

bc = "blue"
print(c.multipleColors({{"C","red",bc},{"O","green",bc},{"L","yellow",bc},{"O","blue",bc},{"R","purple",bc},{"S","cyan",bc}},""))

bc = "purple"
print(c.multipleColors({{"C","red",bc},{"O","green",bc},{"L","yellow",bc},{"O","blue",bc},{"R","purple",bc},{"S","cyan",bc}},""))

bc = "cyan"
print(c.multipleColors({{"C","red",bc},{"O","green",bc},{"L","yellow",bc},{"O","blue",bc},{"R","purple",bc},{"S","cyan",bc}},""))

bc = "white"
print(c.multipleColors({{"C","red",bc},{"O","green",bc},{"L","yellow",bc},{"O","blue",bc},{"R","purple",bc},{"S","cyan",bc}},""))

dofile("ColoradoFlag.lua")
dofile("dealWithItGlasses.lua")

io.write(c.colorBand("red", 200))
io.write(c.colorBand("green", 200))
io.write(c.colorBand("yellow", 200))
io.write(c.colorBand("blue", 200))
io.write(c.colorBand("purple", 200))
io.write(c.colorBand("cyan", 200))
io.write(c.colorBand("white", 200))
