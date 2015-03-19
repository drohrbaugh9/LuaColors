c = require("colors") c.initialize()
b = "black"
r = "red"
io.write(c.colorMatrix({
      {r,r,r,b,r,r,b,b,r,r,b,b,r,r,r,b,r,r,b},
      {r,r,b,b,r,r,r,b,r,r,r,b,r,b,r,b,r,r,r},
      {r,r,r,b,r,b,r,b,r,b,r,b,r,r,r,b,r,b,r}}))
