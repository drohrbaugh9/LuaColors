c = require("colors")
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

dofile("examples/ColoradoFlag.lua")
dofile("examples/dealWithItGlasses.lua")

io.write(c.colorBand("red", 80))
io.write(c.colorBand("green", 80))
io.write(c.colorBand("yellow", 80))
io.write(c.colorBand("blue", 80))
io.write(c.colorBand("purple", 80))
io.write(c.colorBand("cyan", 80))
io.write(c.colorBand("white", 80))

print("\n")

c.colorError("this error is a test", nil, "red")
