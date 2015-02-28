function redPrint(s)
   print("\x1b[0;31m" .. s .. "\x1b[0m")
end

function red(s)
   return "\x1b[0;31m" .. s .. "\x1b[0m"
end

function greenPrint(s)
   print("\x1b[0;32m" .. s .. "\x1b[0m")
end

function green(s)
   return "\x1b[0;32m" .. s .. "\x1b[0m"
end

function yellowPrint(s)
   print("\x1b[0;33m" .. s .. "\x1b[0m")
end

function yellow(s)
   return "\x1b[0;33m" .. s .. "\x1b[0m"
end

function colorPrint(s, c)
   if c == "red" then
      redPrint(s)
   end
   if c == "green" then
      greenPrint(s)
   end
   if c == "yellow" then
      yellowPrint(s)
   end
end

function colorText(s, c)
   if c == "red" then
      return red(s)
   end
   if c == "green" then
      return green(s)
   end
   if c == "yellow" then
      return yellow(s)
   end
end

--[[redPrint("<RED>")
greenPrint("<GREEN>")
yellowPrint("<YELLOW>")
print(red("<RED>") .. green("<GREEN>") .. yellow("<YELLOW>"))
colorPrint("<RED>", "red")
colorPrint("<GREEN>", "green")
colorPrint("<YELLOW>", "yellow")
print(colorText("<RED>", "red") .. colorText("<GREEN>", "green") .. colorText("<YELLOW>", "yellow"))]]
print("\x1b[0;34m<color>\x1b[0m")
