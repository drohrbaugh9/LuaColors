c = {

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

  colors = {},

  availableColors = "black,red,green,yellow,blue,purple,cyan,white",

  getAvailableColors = function()
    return "The available colors are \x1b[0;47;30mblack\x1b[0m " .. c.red("red", " ") .. ", " .. c.green("green", " ") .. ", " .. c.yellow("yellow", " ") .. ", " .. c.blue("blue", " ") .. ", " .. c.purple("purple", " ") .. ", " .. c.cyan("cyan", " ") .. ", and white."
  end,

  values = function(t)
    local i = 0
    return function () i = i + 1; return t[i] end
  end,

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

    if type(s) == "string" or type(s) == "number" then
      return c._COLORSTART .. backColor .. textColor .. s .. c._COLOREND
    elseif type(s) == "table" then
      local st = ""
      for v in c.values(t) do
        st = st .. c._COLORSTART .. backColor .. textColor .. v .. c._COLOREND .. " "
      end
      return st
    else
      return c._COLORSTART .. backColor .. textColor .. tostring(s) .. colorLibrary._COLOREND
    end

    error("string expected, got " .. type(s))
  end,

  red = function(s) return c.color(s, "red", "") end,

  green = function(s) return c.color(s, "green", "") end,

  yellow = function(s) return c.color(s, "yellow", "") end,

  blue = function(s) return c.color(s, "blue", "") end,

  purple = function(s) return c.color(s, "purple", "") end,

  cyan = function(s) return c.color(s, "cyan", "") end,

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

  colorError = function(errorMessage, lineNumber, bandColor)
    if type(bandColor) == "string" then
      if type(errorMessage) == "string" then
	if type(lineNumber) == "number" or type(lineNumber) == "nil" then
	  c.colorBand("red", 80)
	  error(errorMessage, lineNumber)
        end
        error("number expected, got " .. type(lineNumber))
      end
      error("string expected, got " .. type(errorMessage))
    end
    error("string expected, got " .. type(bandColor))
  end,

  colorBand = function(bandColor, bandLength)
     --GUI Terminal is 80 characters wide
     --non-GUI Terminal is 200 characters wide, 56 lines tall
     if type(bandColor) == "string" then
      local band = ""
      for i = 1, bandLength do
        band = band .. "_"
      end
      io.write(c.color(band, bandColor, bandColor))
    else
      error("string expected, got " .. type(bandColor))
    end
  end

  --[[
  terminalColor = function(c)
    if type(c) == "string" then
      c = string.lower(c)
      if c == "red" then io.write("\x1b[0;31m") end
      if c == "green" then io.write("\x1b[0;32m") end
      if c == "yellow" then io.write("\x1b[0;33") end
      if c == "blue" then io.write("\x1b[0;34m") end
      if c == "purple" then io.write("\x1b[0;35m") end
      if c == "cyan" then io.write("\x1b[0;36m") end
      return
    end
    error("string expected, got " .. type(c))
  end--]]
}

return c
