local c = require("colors") c.initialize()
local _ = "white"
local M = "black"
io.write(c.colorMatrix({
      {_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_},
      {_,_,_,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,M,_},
      {_,M,M,_,_,_,_,_,_,M,M,_,M,_,M,M,M,M,M,M,M,M,M,M,M,_,M,_,M,M,M,M,M,M,M,M,_},
      {_,_,_,_,_,_,_,_,_,_,M,M,_,M,_,M,M,M,M,M,M,_,_,_,M,M,_,M,_,M,M,M,M,M,M,_,_},
      {_,_,_,_,_,_,_,_,_,_,_,M,M,_,M,_,M,M,M,M,_,_,_,_,_,M,M,_,M,_,M,M,M,M,_,_,_},
      {_,_,_,_,_,_,_,_,_,_,_,_,M,M,M,M,M,M,M,_,_,_,_,_,_,_,M,M,M,M,M,M,M,_,_,_,_},
      {_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_}}))
