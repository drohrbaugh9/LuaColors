c = {

  --These variables are all the escape sequences that this library uses
  _COLORSTART = "\x1b[",
  _BLACKBACK = "40;",
  _REDBACK = "41;",
  _GREENBACK = "42;",
  _YELLOWBACK = "43;",
  _BLUEBACK = "44;",
  _PURPLEBACK = "45;",
  _CYANBACK = "46;",
  _WHITEBACK = "47;",
  _BLACKTEXT = "30m",
  _REDTEXT = "31m",
  _GREENTEXT = "32m",
  _YELLOWTEXT = "33m",
  _BLUETEXT = "34m",
  _PURPLETEXT = "35m",
  _CYANTEXT = "36m",
  _WHITETEXT = "37m",
  _COLOREND = "\x1b[0m",

  --This table will contain all the above variables
  colors = {},

  --This string contains all the available colors
  availableColors = "black,red,green,yellow,blue,purple,cyan,white",

  --This function returns a string of all the available colors in color
  getAvailableColors = function()
    return "The available colors are \x1b[0;47;30mblack\x1b[0m, " .. c.red("red", " ") .. ", " .. c.green("green", " ") .. ", " .. c.yellow("yellow", " ") .. ", " .. c.blue("blue", " ") .. ", " .. c.purple("purple", " ") .. ", and " .. c.cyan("cyan", " ") .. "."
  end,

  --This function is a simple iterator that loops through a table and returns the elements of the table
  values = function(t)
    local i = 0
    return function () i = i + 1; return t[i] end
  end,

  --This function initializes the colors table
  initialize = function()
    local ct = {}
    ct["blackback"] = c._BLACKBACK
    ct["redback"] = c._REDBACK
    ct["greenback"] = c._GREENBACK
    ct["yellowback"] = c._YELLOWBACK
    ct["blueback"] = c._BLUEBACK
    ct["purpleback"] = c._PURPLEBACK
    ct["cyanback"] = c._CYANBACK
    ct["whiteback"] = c._WHITEBACK
    ct["blacktext"] = c._BLACKTEXT
    ct["redtext"] = c._REDTEXT
    ct["greentext"] = c._GREENTEXT
    ct["yellowtext"] = c._YELLOWTEXT
    ct["bluetext"] = c._BLUETEXT
    ct["purpletext"] = c._PURPLETEXT
    ct["cyantext"] = c._CYANTEXT
    ct["whitetext"] = c._WHITETEXT
    c.colors = ct
  end,

  --This function takes a value and returns it as a string with the proper escape sequences to print it with the desired text and background colors.
  color = function(s, color, bc)

    if not type(color) == "string" then
      error("string expected, got " .. type(color))
    end

    if color == "" then color = " " end
    if bc == "" then bc = " " end

    color = string.lower(color)
    local textColor = ""

    if not type(bc) == "string" then
      error("string expected, got " .. type(bc))
    end

    bc = string.lower(bc)
    local backColor = ""

    if string.find(c.availableColors, color) == nil or color == "," then
      textColor = "0m"
    else
      textColor = c.colors[color .. "text"]
    end

    if string.find(c.availableColors, bc) == nil or bc == "," then
      backColor = "0;"
    else
      backColor = c.colors[bc .. "back"]
    end

    --Is s is a string or number, then it can be concatenated with the proper escape sequences without any other commands  
    if type(s) == "string" or type(s) == "number" then
      return c._COLORSTART .. backColor .. textColor .. s .. c._COLOREND
      --If s is a table, then its values are extracted and put into a string with spaces between elements and the proper escape sequences  
    elseif type(s) == "table" then
      local st = ""
      for v in c.values(t) do
        st = st .. c._COLORSTART .. backColor .. textColor .. v .. c._COLOREND .. " "
      end
      return st
      --If s is not a string, number, or table, the program tries to turn it into a string and adds the proper escape sequences.  
    else
      return c._COLORSTART .. backColor .. textColor .. tostring(s) .. colorLibrary._COLOREND
    end

    --If s cannot be turned into a string, then the error() function is called
    error("string expected, got " .. type(s))
  end,

  red = function(s) return c.color(s, "red", "") end,

  green = function(s) return c.color(s, "green", "") end,

  yellow = function(s) return c.color(s, "yellow", "") end,

  blue = function(s) return c.color(s, "blue", "") end,

  purple = function(s) return c.color(s, "purple", "") end,

  cyan = function(s) return c.color(s, "cyan", "") end,

  --This function takes a table like this one
  --  {{"text","text color","background color"},{"text,"text color","background color"}}
  --    and prints out the text with the corresponding colors with the specified character between each portion of text.
  multipleColors = function(t, char)
    if char == nil then
      char = " "
    end
    if type(t) == "table" then
      if type(char) == "string" then
        local st = ""
        for s in c.values(t) do
          st = st .. c.color(s[1],s[2],s[3]) .. char
        end
        return st
      end
      error("string expected, got " .. type(char))
    end
    error("table expected, got " .. type(t))
  end,

  --This function prints a band of the specified color across the screen before calling the error() function with the specified error message and line number
  colorError = function(errorMessage, lineNumber, bandColor)
    if type(bandColor) == "string" then
      if type(errorMessage) == "string" then
        if type(lineNumber) == "number" or type(lineNumber) == "nil" then
          if string.find(c.availableColors, bandColor) == nil then
            error("color " .. bandColor .. " not found")
          else
            io.write(c.colorBand(bandColor, 80))
            io.write("\n")
            error(errorMessage, lineNumber)
          end
        end
        error("number expected, got " .. type(lineNumber))
      end
      error("string expected, got " .. type(errorMessage))
    end
    error("string expected, got " .. type(bandColor))
  end,

  --This function prints a band of the specified color a specified number of characters long across the screen
  colorBand = function(bandColor, bandLength)
    if not type(bandLength) == "number" or bandLength > 200 then
      bandLength = 200
    end
    if type(bandColor) == "string" then
      local band = ""
      for i = 1, bandLength do
        band = band .. " "
      end
      return c.color(band, bandColor, bandColor)
    else
      error("string expected, got " .. type(bandColor))
    end
  end,

  --This function returns the length of the specified table
  tableLength = function(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
  end,

--This function receives a table like this one
--  {{"color","color","color","color"},
--   {"color","color","color","color"}}
--    and prints it out in the same orientation replacing the strings with a band of color that is 2 characters wide
--See examples/ColoradoFlag.lua and examples/dealWithItGlasses for a better explanation.
  colorMatrix = function(t)
    if type(t) == "table" then
      local s = ""
      for row = 1, c.tableLength(t) do
        for col = 1, c.tableLength(t[row]) do
          s = s .. c.color("  ", t[row][col], t[row][col])
        end
        s = s .. "\n"
      end
      return s
    end
    error("table expected, got " .. type(t))
  end
}

return c
