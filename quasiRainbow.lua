c = require("colors") c.initialize()

--if you are using the GUI, uncomment the following lines
--[[
for i=1,5 do
  c.colorBand("red", 80)
end

for i =1,4 do
  c.colorBand("yellow", 80)
end

for i=1,5 do
  c.colorBand("green", 80)
end

for i=1,4 do
  c.colorBand("blue", 80)
end

for i=1,5 do
  c.colorBand("purple", 80)
end--]]

--if you are not using the GUI, uncomment the following lines
---[[
    for i=1,11 do
      io.write(c.colorBand("red", 200))
    end

    for i=1,11 do
      io.write(c.colorBand("yellow", 200))
    end

    for i=1,11 do
      io.write(c.colorBand("green", 200))
    end

    for i=1,11 do
      io.write(c.colorBand("blue", 200))
    end

    for i=1,11 do
      io.write(c.colorBand("purple", 200))
    end--]]
