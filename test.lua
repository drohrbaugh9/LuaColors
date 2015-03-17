c = require("colors")
c.initialize()

print(c.red("C") .. c.green("O") ..c.yellow("L") .. c.blue("O") .. c.purple("R") .. c.lightBlue("S"))

print(c.multipleColors({{"C","red"},{"O","green"},{"L","yellow"},{"O","blue"},{"R","purple"},{"S","lightBlue"}}, ""))

print(c.getAvailableColors())

--c.terminalColor("yellOw")
