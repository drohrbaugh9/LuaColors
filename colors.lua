Red = "\x1b[0;31m" Green = "\x1b[0;32m" Yellow = "\x1b[0;33m" Blue = "\x1b[0;34m" Purple = "\x1b[0;35m" LightBlue = "\x1b[0;36m"
colors = {}
colors["red"] = Red
colors["green"] = Green
colors["yellow"] = Yellow
colors["blue"] = Blue
colors["purple"] = Purple
colors["lightblue"] = LightBlue

function availableColors() print("red, green, yellow, blue, purple, light blue") end

function color(s, c) 
   if not type(c) == "string" then
      error("string expected, got " .. type(c))
   end
   c = string.lower(c)
   if type(s) == "string" or type(s) == "number" then
      return colors[c] .. s .. "\x1b[0m"
   elseif type(s) == "table" then
      st = ""
      for v in values(t) do
	 st = st .. colors[c] .. v .. "\x1b[0m "
      end
      return st
   else
      return colors[c] .. tostring(s) .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end

--function redPrint(s) print(red(s)) end

function red(s)
   return color(s, "red")
end

--function greenPrint(s) print(green(s)) end

function green(s)
   return color(s, "green")
end

--function yellowPrint(s) print(yellow(s)) end

function yellow(s)
   return color(s, "yellow")
end

--function bluePrint(s) print(blue(s)) end

function blue(s)
   return color(s, "blue")
end

--function purplePrint(s) print(purple(s)) end

function purple(s)
   return color(s, "purple")
end

--function lightBluePrint(s) print(lightBlue(s)) end

function lightBlue(s)
   return color(s, "lightblue")
end

--function colorPrint(s, c) print(color(s, c)) end

--function multipleColorsPrint(t, c) print(multipleColors(t, c)) end

function multipleColors(t, c)
   if type(t) == "table" then
      if type(c) == "string" then
	 st = ""
	 for s in values(t) do
	    st = st .. colorText(s[1],s[2]) .. c
	 end
	 return st
      end
      error("string expected, got " .. type(c))
   end
   error("table expected, got " .. type(t))
end

function values(t)
  local i = 0
  return function ()  i = i + 1; return t[i] end
end

function terminalColor(c)
   if type(c) == "string" then
      c = string.lower(c)
      if c == "red" then print(Red) end
      if c == "green" then print(Green) end
      if c == "yellow" then print(Yellow) end
      if c == "blue" then print(Blue) end
      if c == "purple" then print(Purple) end
      if c == "lightblue"then print(LightBlue) end
      return
   end
   error("string expected, got " .. type(c))
end

--examples
--redPrint("C"); greenPrint("O"); yellowPrint("L"); bluePrint("O"); purplePrint("R"); lightBluePrint("S");
print(red("C") .. green("O") .. yellow("L") .. blue("O") .. purple("R") .. lightBlue("S") .. "\x1b[;034m")
--colorPrint("C", "red"); colorPrint("O", "green"); colorPrint("L", "yellow"); colorPrint("O", "blue"); colorPrint("R", "purple"); colorPrint("S", "lightBlue");
print(colorText("C", "red") .. colorText("O", "green") .. colorText("L", "yellow") .. colorText("O", "blue") .. colorText("R", "purple") .. colorText("S", "lightBlue"))
print(colorText("<WHITE>", "white"))
--multipleColorsPrint({{"C","red"},{"O","green"},{"L","yellow"},{"O","blue"},{"R","purple"},{"S","lightBlue"}}, " ")
print(multipleColors({{"C","red"},{"O","green"},{"L","yellow"},{"O","blue"},{"R","purple"},{"S","lightBlue"}}, " "))
t = {"<RED>","more red"}
print(red(t))
terminalColor("green")
