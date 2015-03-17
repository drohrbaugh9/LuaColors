colorsLibrary = {

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
    return "The available colors are \x1b[0;47;30mblack\x1b[0m " .. colorsLibrary.red("red", " ") .. ", " .. colorsLibrary.green("green", " ") .. ", " .. colorsLibrary.yellow("yellow", " ") .. ", " .. colorsLibrary.blue("blue", " ") .. ", " .. colorsLibrary.purple("purple", " ") .. ", " .. colorsLibrary.cyan("cyan", " ") .. ", and white."
  end,

  values = function(t)
    local i = 0
    return function () i = i + 1; return t[i] end
  end,

  initialize = function()
    local c = {}
    c["blackback"] = colorsLibrary._BLACKBACK
    c["redback"] = colorsLibrary._REDBACK
    c["greenback"] = colorsLibrary._GREENBACK
    c["yellowback"] = colorsLibrary._YELLOWBACK
    c["blueback"] = colorsLibrary._BLUEBACK
    c["purpleback"] = colorsLibrary._PURPLEBACK
    c["cyanback"] = colorsLibrary._CYANBACK
    c["whiteback"] = colorsLibrary._WHITEBACK
    c["blacktext"] = colorsLibrary._BLACKTEXT
    c["redtext"] = colorsLibrary._REDTEXT
    c["greentext"] = colorsLibrary._GREENTEXT
    c["yellowtext"] = colorsLibrary._YELLOWTEXT
    c["bluetext"] = colorsLibrary._BLUETEXT
    c["purpletext"] = colorsLibrary._PURPLETEXT
    c["cyantext"] = colorsLibrary._CYANTEXT
    c["whitetext"] = colorsLibrary._WHITETEXT
    colorsLibrary.colors = c
  end,

  color = function(s, c, bc)

    if not type(c) == "string" then
      error("string expected, got " .. type(c))
    end

    if c == "" then c = " " end
    if bc == "" then bc = " " end

    c = string.lower(c)
    local textColor = ""

    if not type(bc) == "string" then
      error("string expected, got " .. type(bc))
    end

    bc = string.lower(bc)
    local backColor = ""

    if string.find(colorsLibrary.availableColors, c) == nil or c == "," then
      textColor = "0m"
    else
      textColor = colorsLibrary.colors[c .. "text"]
    end

    if string.find(colorsLibrary.availableColors, bc) == nil or c == "," then
      backColor = "0;"
    else
      backColor = colorsLibrary.colors[bc .. "back"]
    end

    if type(s) == "string" or type(s) == "number" then
      return colorsLibrary._COLORSTART .. backColor .. textColor .. s .. colorsLibrary._COLOREND
    elseif type(s) == "table" then
      local st = ""
      for v in colorsLibrary.values(t) do
        st = st .. colorsLibrary._COLORSTART .. backColor .. textColor .. v .. colorsLibrary._COLOREND .. " "
      end
      return st
    else
      return colorsLibrary._COLORSTART .. backColor .. textColor .. tostring(s) .. colorLibrary._COLOREND
    end

    error("string expected, got " .. type(s))
  end,

  red = function(s) return colorsLibrary.color(s, "red", "") end,

  green = function(s) return colorsLibrary.color(s, "green", "") end,

  yellow = function(s) return colorsLibrary.color(s, "yellow", "") end,

  blue = function(s) return colorsLibrary.color(s, "blue", "") end,

  purple = function(s) return colorsLibrary.color(s, "purple", "") end,

  cyan = function(s) return colorsLibrary.color(s, "cyan", "") end,

  multipleColors = function(t, c)
    if c == nil then
      c = " "
    end
    if type(t) == "table" then
      if type(c) == "string" then
        local st = ""
        for s in colorsLibrary.values(t) do
          st = st .. colorsLibrary.color(s[1],s[2],s[3]) .. c
        end
        return st
      end
      error("string expected, got " .. type(c))
    end
    error("table expected, got " .. type(t))
  end--,

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

return colorsLibrary
