for i=1,50 do
  io.write("\x1b[" .. i .. ";" .. 2*i - 1 .. "H\x1b[40;30m  \x1b[0m")
  io.write("\x1b[" .. i .. ";" .. 2*i + 1 .. "H\x1b[41;31m  \x1b[0m")
  io.write("\x1b[" .. i .. ";" .. 2*i + 3 .. "H\x1b[42;32m  \x1b[0m")
  io.write("\x1b[" .. i .. ";" .. 2*i + 5 .. "H\x1b[43;33m  \x1b[0m")
  io.write("\x1b[" .. i .. ";" .. 2*i + 7 .. "H\x1b[44;34m  \x1b[0m")
  io.write("\x1b[" .. i .. ";" .. 2*i + 9 .. "H\x1b[45;35m  \x1b[0m")
  io.write("\x1b[" .. i .. ";" .. 2*i + 11 .. "H\x1b[46;36m  \x1b[0m")
  io.write("\x1b[" .. i .. ";" .. 2*i + 13 .. "H\x1b[47;37m  \x1b[0m")
end
