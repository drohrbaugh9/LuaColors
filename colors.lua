local redPrint = function(s) print(red(s)) end

local red = function(s)
   if type(s) == "string" then
      return "\x1b[0;31m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

local greenPrint = function(s) print(green(s)) end

local green = function(s)
   if type(s) == "string" then
      return "\x1b[0;32m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

local yellowPrint = function(s) print(yellow(s)) end

yellow = function(s)
   if type(s) == "string" then
      return "\x1b[0;33m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

local bluePrint = function(s) print(blue(s)) end

local blue = function(s)
   if type(s) == "string" then
      return "\x1b[0;34m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

local purplePrint = function(s) print(purple(s)) end

local purple = function(s)
   if type(s) == "string" then
      return "\x1b[0;35m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

local lightBluePrint = function(s) print(lightBlue(s)) end

local lightBlue = function(s)
   if type(s) == "string" then
      return "\x1b[0;36m" .. s .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

local colorPrint = function(s, c) print(colorText(s, c)) end

local colorText = function(s, c)
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

local values = function(t)
  local i = 0
  return function ()  i = i + 1; return t[i] end
end

local multipleColorsPrint = function(t, c) print(multipleColors(t, c)) end

local multipleColors = function(t, c)
  if type(c) == "string" then
    st = ""
    for s in values(t) do
      st = st .. colorText(s[1],s[2]) .. c
    end
    return st
  end
  error("string expected, got " .. type(c))
end

local terminalColor = function(c)
   if type(c) == "string" then
      c = string.lower(c)
      if c == "red" then print("\x1b[0;31m") end
      if c == "green" then print("\x1b[0;32m") end
      if c == "yellow" then print("\x1b[0;33m") end
      if c == "blue" then print("\x1b[0;34m") end
      if c == "purple" then print("\x1b[0;35m") end
      if c == "lightblue"then print("\x1b[0;36m") end
      return
   end
   error("string expected, got " .. type(c))
end

--examples
redPrint("C"); greenPrint("O"); yellowPrint("L"); bluePrint("O"); purplePrint("R"); lightBluePrint("S");
print(red("C") .. green("O") .. yellow("L") .. blue("O") .. purple("R") .. lightBlue("S") .. "\x1b[;034m")
colorPrint("C", "red"); colorPrint("O", "green"); colorPrint("L", "yellow"); colorPrint("O", "blue"); colorPrint("R", "purple"); colorPrint("S", "lightBlue");
print(colorText("C", "red") .. colorText("O", "green") .. colorText("L", "yellow") .. colorText("O", "blue") .. colorText("R", "purple") .. colorText("S", "lightBlue"))
multipleColorsPrint({{"C","red"},{"O","green"},{"L","yellow"},{"O","blue"},{"R","purple"},{"S","lightBlue"}}, " ")
print(multipleColors({{"C","red"},{"O","green"},{"L","yellow"},{"O","blue"},{"R","purple"},{"S","lightBlue"}}, " "))
terminalColor("blue")
