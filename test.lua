c = require("colors") c.initialize()
print(c.getAvailableColors())
print(c.red("C") .. c.green("O") ..c.yellow("L") .. c.blue("O") .. c.purple("R") .. c.cyan("S"))
print(c.multipleColors({{"C","redtext"},{"O","greentext"},{"L","yellowtext"},{"O","bluetext"},{"R","purpletext"},{"S","cyantext"}}, ""))
print("\n\x1b[44;37m<test>\x1b[0m")
