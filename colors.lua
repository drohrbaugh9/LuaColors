c = {}
c["red"] = Red; colors["green"] = Green; colors["yellow"] = Yellow; colors["blue"] = Blue; colors["purple"] = Purple; colors["lightblue"] = LightBlue

colorsLibrary = {

Red = "\x1b[0;31m",
Green = "\x1b[0;32m",
Yellow = "\x1b[0;33m",
Blue = "\x1b[0;34m",
Purple = "\x1b[0;35m",
LightBlue = "\x1b[0;36m",
colors = c,

availableColors = function()
   return "red, green, yellow, blue, purple, lightblue"
end,

values = function(t)
  local i = 0
  return function ()  i = i + 1; return t[i] end
end,

--function redPrint(s) print(red(s)) end

--function greenPrint(s) print(green(s)) end

--function yellowPrint(s) print(yellow(s)) end

--function bluePrint(s) print(blue(s)) end

--function purplePrint(s) print(purple(s)) end

--function lightBluePrint(s) print(lightBlue(s)) end

--function colorPrint(s, c) print(color(s, c)) end

--function multipleColorsPrint(t, c) print(multipleColors(t, c)) end

color = function(s, c)
   if not type(c) == "string" then
      error("string expected, got " .. type(c))
   end
   c = string.lower(c)
   if string.find(availableColors(), c) == nil then
      if type(s) == "string" then return s end
      error("string expected, got " .. type(s))
   end
   if type(s) == "string" or type(s) == "number" then
      return colors[c] .. s .. "\x1b[0m"
   elseif type(s) == "table" then
      local st = ""
      for v in values(t) do
	 st = st .. colors[c] .. v .. "\x1b[0m "
      end
      return st
   else
      return colors[c] .. tostring(s) .. "\x1b[0m"
   end
   error("string expected, got " .. type(s))
end,

red = function(s)
   return color(s, "red")
end,

green = function(s)
   return color(s, "green")
end,

yellow = function(s)
   return color(s, "yellow")
end,

blue = function(s)
   return color(s, "blue")
end,

purple = function(s)
   return color(s, "purple")
end,

lightBlue = function(s)
   return color(s, "lightblue")
end,

multipleColors = function(t, c)
   if type(t) == "table" then
      if type(c) == "string" then
	 local st = ""
	 for s in values(t) do
	    st = st .. color(s[1],s[2]) .. c
	 end
	 return st
      end
      error("string expected, got " .. type(c))
   end
   error("table expected, got " .. type(t))
end,

terminalColor = function(c)
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
}

--[[colorsLibrary[7]["red"] = colorsLibrary[1]
colorsLibrary[7]["green"] = colorsLibrary[2]
colorsLibrary[7]["yellow"] = colorsLibrary[3]
colorsLibrary[7]["blue"] = colorsLibrary[4]
colorsLibrary[7]["purple"] = colorsLibrary[5]
colorsLibrary[7]["lightblue"] = colorsLibrary[6]]

return colorsLibrary
