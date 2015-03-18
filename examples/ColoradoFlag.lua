local c = require("colors") c.initialize()
local b = "blue"
local bt = {b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b}
local r = "red"
local w = "white"
local y = "yellow"
io.write(c.colorMatrix({bt,bt,bt,
      {b,b,b,b,b,b,b,r,r,r,r,r,r,b,b,b,b,b,b,b,b,b,b,b},
      {b,b,b,b,b,b,r,r,r,r,r,r,r,r,b,b,b,b,b,b,b,b,b,b},
      {b,b,b,b,b,r,r,r,r,r,r,r,r,r,r,b,b,b,b,b,b,b,b,b},
      {w,w,w,w,w,r,r,r,y,y,y,y,r,r,r,w,w,w,w,w,w,w,w,w},
      {w,w,w,w,r,r,r,y,y,y,y,y,y,w,w,w,w,w,w,w,w,w,w,w},
      {w,w,w,w,r,r,r,y,y,y,y,y,y,w,w,w,w,w,w,w,w,w,w,w},
      {w,w,w,w,r,r,r,y,y,y,y,y,y,w,w,w,w,w,w,w,w,w,w,w},
      {w,w,w,w,r,r,r,y,y,y,y,y,y,w,w,w,w,w,w,w,w,w,w,w},
      {w,w,w,w,w,r,r,r,y,y,y,y,r,r,r,w,w,w,w,w,w,w,w,w},
      {b,b,b,b,b,r,r,r,r,r,r,r,r,r,r,b,b,b,b,b,b,b,b,b},
      {b,b,b,b,b,b,r,r,r,r,r,r,r,r,b,b,b,b,b,b,b,b,b,b},
      {b,b,b,b,b,b,b,r,r,r,r,r,r,b,b,b,b,b,b,b,b,b,b,b},
      bt,bt,bt}))
