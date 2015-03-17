colorsLibrary = {

_RED = "\x1b[0;31m",
_GREEN = "\x1b[0;32m",
_YELLOW = "\x1b[0;33m",
_BLUE = "\x1b[0;34m",
_PURPLE = "\x1b[0;35m",
_CYAN = "\x1b[0;36m",
_COLOREND = "\x1b[0m",

colors = {},

availableColors = "red, green, yellow, blue, purple, cyan",

getAvailableColors = function()
   return "The available colors are " .. colorsLibrary.red("red") .. ", " .. colorsLibrary.green("green") .. ", " .. colorsLibrary.yellow("yellow") .. ", " .. colorsLibrary.blue("blue") .. ", " .. colorsLibrary.purple("purple") .. ", and " .. colorsLibrary.cyan("cyan") .. "."
end,

values = function(t)
  local i = 0
  return function ()  i = i + 1; return t[i] end
end,

initialize = function()
   local c = {}
   c["red"] = colorsLibrary._RED
   c["green"] = colorsLibrary._GREEN
   c["yellow"] = colorsLibrary._YELLOW
   c["blue"] = colorsLibrary._BLUE
   c["purple"] = colorsLibrary._PURPLE
   c["cyan"] = colorsLibrary._CYAN
   colorsLibrary.colors = c
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
   if string.find(colorsLibrary.availableColors, c) == nil then
      if type(s) == "string" then return s end
      error("string expected, got " .. type(s))
   end
   if type(s) == "string" or type(s) == "number" then
      return colorsLibrary.colors[c] .. s .. colorsLibrary._COLOREND
   elseif type(s) == "table" then
      local st = ""
      for v in colorsLibrary.values(t) do
	 st = st .. colorsLibrary.colors[c] .. v .. colorsLibrary._COLOREND .. " "
      end
      return st
   else
      return colorsLibrary.colors[c] .. tostring(s) .. colorLibrary._COLOREND
   end
   error("string expected, got " .. type(s))
end,

red = function(s)
   return colorsLibrary.color(s, "red")
end,

green = function(s)
   return colorsLibrary.color(s, "green")
end,

yellow = function(s)
   return colorsLibrary.color(s, "yellow")
end,

blue = function(s)
   return colorsLibrary.color(s, "blue")
end,

purple = function(s)
   return colorsLibrary.color(s, "purple")
end,

cyan = function(s)
   return colorsLibrary.color(s, "cyan")
end,

multipleColors = function(t, c)
   if c == nil then
      c = " "
   end
   if type(t) == "table" then
      if type(c) == "string" then
	 local st = ""
	 for s in colorsLibrary.values(t) do
	    st = st .. colorsLibrary.color(s[1],s[2]) .. c
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
      if c == "red" then io.write(colorsLibrary._RED) end
      if c == "green" then io.write(colorsLibrary._GREEN) end
      if c == "yellow" then io.write(colorsLibrary._YELLOW) end
      if c == "blue" then io.write(colorsLibrary._BLUE) end
      if c == "purple" then io.write(colorsLibrary._PURPLE) end
      if c == "cyan" then io.write(colorsLibrary._CYAN) end
      return
   end
   error("string expected, got " .. type(c))
end
}

return colorsLibrary
