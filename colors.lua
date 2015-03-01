function redPrint(s)
   print(red(s))
end

function red(s)
   return "\x1b[0;31m" .. s .. "\x1b[0m"
end

function greenPrint(s)
   print(green(s))
end

function green(s)
   return "\x1b[0;32m" .. s .. "\x1b[0m"
end

function yellowPrint(s)
   print(yellow(s))
end

function yellow(s)
   return "\x1b[0;33m" .. s .. "\x1b[0m"
end

function bluePrint(s)
   print(blue(s))
end

function blue(s)
   return "\x1b[0;34m" .. s .. "\x1b[0m"
end

function purplePrint(s)
   print(purple(s))
end

function purple(s)
   return "\x1b[0;35m" .. s .. "\x1b[0m"
end

function lightBluePrint(s)
   print(lightBlue(s))
end

function lightBlue(s)
   return "\x1b[0;36m" .. s .. "\x1b[0m"
end

function colorPrint(s, c)
   print(colorText(s, c))
end

function colorText(s, c)
   if c == "red" or c == "Red" then
      return red(s)
   end
   if c == "green" or c == "Green" then
      return green(s)
   end
   if c == "yellow" or c == "Yellow" then
      return yellow(s)
   end
   if c == "blue" or c == "Blue" then
      return blue(s)
   end
   if c == "purple" or c == "Purple" then
      return purple(s)
   end
   if c == "lightBlue" or c == "lightblue" or c == "Lightblue" or c == "LightBlue" then
      return lightBlue(s)
   end
end

print(red("C") .. yellow("O") .. green("L") .. blue("O") .. purple("R") .. lightBlue("S"))
