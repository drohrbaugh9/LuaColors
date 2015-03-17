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

print(c.color("________________________________________________________________________________________________________________________________________________________________________________________________________", "red", "red"))
error("this error is a test")
