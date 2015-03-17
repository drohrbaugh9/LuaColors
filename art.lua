c = require("colors") c.initialize()
b = "blue"
bt = {b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b}
r = "red"
w = "white"
y = "yellow"
io.write(c.colorMatrix({bt,bt,bt,
      {b,b,b,b,b,b,b,
        r,r,r,r,r,r,
        b,b,b,b,b,b,b,b,b,b,b},
      {b,b,b,b,b,b,
        r,r,r,r,r,r,r,r,
        b,b,b,b,b,b,b,b,b,b},
      
    }))
--[[
{w,w,w,w,w,
        r,r,r,
        y,y,y,y,
        r,r,r,
        w,w,w,w,w,w,w,w,w},
      }))]]
