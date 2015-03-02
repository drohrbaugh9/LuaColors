function redPrint(s) print(red(s)) end

function red(s)
   if type(s) == "string" then
      return "\x1b[0;31m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

function greenPrint(s) print(green(s)) end

function green(s)
   if type(s) == "string" then
      return "\x1b[0;32m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

function yellowPrint(s) print(yellow(s)) end

function yellow(s)
   if type(s) == "string" then
      return "\x1b[0;33m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

function bluePrint(s) print(blue(s)) end

function blue(s)
   if type(s) == "string" then
      return "\x1b[0;34m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

function purplePrint(s) print(purple(s)) end

function purple(s)
   if type(s) == "string" then
      return "\x1b[0;35m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

function lightBluePrint(s) print(lightBlue(s)) end

function lightBlue(s)
   if type(s) == "string" then
      return "\x1b[0;36m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

function colorPrint(s, c) print(colorText(s, c)) end

function colorText(s, c)
   if type(c) == "string" then
      c = string.lower(c)
      if c == "red" then return red(s) end
      if c == "green" then return green(s) end
      if c == "yellow" then  return yellow(s) end
      if c == "blue" then return blue(s) end
      if c == "purple" then return purple(s) end
      if c == "lightblue" then return lightBlue(s) end
      return s
   end
end

function multipleColorsPrint(t) print(multipleColors(t)) end

function multipleColors(t)
   st = ""
   for n,s in pairs(t) do
      st = st .. colorText(s[1],s[2])
   end
   return st
end

function terminalColor(c)
   if type(c) == "string" then
      c = string.lower(c)
      if c == "red" then print("\x1b[0;31m") end
      if c == "green" then print("\x1b[0;32m") end
      if c == "yellow" then print("\x1b[0;33m") end
      if c == "blue" then print("\x1b[0;34m") end
      if c == "purple" then print("\x1b[0;35m") end
      if c == "lightblue"then print("\x1b[0;36m") end
   end
end

--examples
redPrint("C") yellowPrint("O") greenPrint("L") bluePrint("O") purplePrint("R") lightBluePrint("S")
print(red("C") .. green("O") .. yellow("L") .. blue("O") .. purple("R") .. lightBlue("S") .. "\x1b[;034m")
colorPrint("C", "red") colorPrint("O", "green") colorPrint("L", "yellow") colorPrint("O", "blue") colorPrint("R", "purple") colorPrint("S", "lightBlue")
print(colorText("C", "red") .. colorText("O", "green") .. colorText("L", "yellow") .. colorText("O", "blue") .. colorText("R", "purple") .. colorText("S", "lightBlue"))
multipleColorsPrint({{"C","red"},{"O","green"},{"L","yellow"},{"O","blue"},{"R","purple"},{"S","lightBlue"}})
print(multipleColors({{"C","red"},{"O","green"},{"L","yellow"},{"O","blue"},{"R","purple"},{"S","lightBlue"}}))
terminalColor("yellow")
