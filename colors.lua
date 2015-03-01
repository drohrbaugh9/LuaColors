function redPrint(s)
   print(red(s))
end

function red(s)
   return "\x1b[0;31m" .. s .. "\x1b[0m"
end

function greenPrint(s)
   print(green(s))
end

function green(s)
   return "\x1b[0;32m" .. s .. "\x1b[0m"
end

function yellowPrint(s)
   print(yellow(s))
end

function yellow(s)
   return "\x1b[0;33m" .. s .. "\x1b[0m"
end

function bluePrint(s)
   print(blue(s))
end

function blue(s)
   return "\x1b[0;34m" .. s .. "\x1b[0m"
end

function purplePrint(s)
   print(purple(s))
end

function purple(s)
   return "\x1b[0;35m" .. s .. "\x1b[0m"
end

function lightBluePrint(s)
   print(lightBlue(s))
end

function lightBlue(s)
   return "\x1b[0;36m" .. s .. "\x1b[0m"
end

function colorPrint(s, c)
   print(colorText(s, c))
end

function colorText(s, c)
   c = string.upper(c)
   if c == "RED" then
      return red(s)
   end
   if c == "GREEN" then
      return green(s)
   end
   if c == "YELLOW" then
      return yellow(s)
   end
   if c == "BLUE" then
      return blue(s)
   end
   if c == "PURPLE" then
      return purple(s)
   end
   if c == "LIGHTBLUE" then
      return lightBlue(s)
   end
end

function multipleColorsPrint(t)
   print(multipleColors(t))
end

function multipleColors(t)
   st = ""
   for c,s in pairs(t) do
      st = st .. colorText(s[1],s[2])
   end
   return st
end

--examples
redPrint("C") yellowPrint("O") greenPrint("L") bluePrint("O") purplePrint("R") lightBluePrint("S")
print(red("C") .. yellow("O") .. green("L") .. blue("O") .. purple("R") .. lightBlue("S") .. "\x1b[;034m")
colorPrint("C", "red") colorPrint("O", "yellow") colorPrint("L", "green") colorPrint("O", "blue") colorPrint("R", "purple") colorPrint("S", "lightBlue")
print(colorText("C", "red") .. colorText("O", "yellow") .. colorText("L", "green") .. colorText("O", "blue") .. colorText("R", "purple") .. colorText("S", "lightBlue"))
multipleColorsPrint({{"C","red"},{"O","yellow"},{"L","green"},{"O","blue"},{"R","purple"},{"S","lightBlue"}})
print(multipleColors({{"C","red"},{"O","yellow"},{"L","green"},{"O","blue"},{"R","purple"},{"S","lightBlue"}}))
