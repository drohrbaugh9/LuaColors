local c = require("colors") c.initialize()
local w = "white"
local b = "black"
io.write(c.colorMatrix({{w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w},
                        {w,w,w,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,w},
                        {w,b,b,w,w,w,w,w,w,b,b,w,b,w,b,b,b,b,b,b,b,b,b,b,b,w,b,w,b,b,b,b,b,b,b,b,w},
                        {w,w,w,w,w,w,w,w,w,w,b,b,w,b,w,b,b,b,b,b,b,w,w,w,b,b,w,b,w,b,b,b,b,b,b,w,w},
                        {w,w,w,w,w,w,w,w,w,w,w,b,b,w,b,w,b,b,b,b,w,w,w,w,w,b,b,w,b,w,b,b,b,b,w,w,w},
                        {w,w,w,w,w,w,w,w,w,w,w,w,b,b,b,b,b,b,b,w,w,w,w,w,w,w,b,b,b,b,b,b,b,w,w,w,w},
                        {w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w,w}}))
