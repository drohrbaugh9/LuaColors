c = require("colors")
c.initializeColorsTable()

--[[print(c.red("<RED>"))
print(c.green("<GREEN>"))
print(c.yellow("<YELLOW>"))
print(c.blue("<BLUE"))
print(c.purple("<PURPLE>"))
print(c.lightBlue("<LIGHTBLUE>"))]]

print(c.multipleColors({{"<RED>","red"},{"<GREEN>","green"}}, " "))
