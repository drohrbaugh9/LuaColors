printResult = ""

function Print (...)
  for i,v in ipairs(arg) do
    printResult = printResult .. tostring(v) .. "\t"
  end
  printResult = printResult .. "\n"
  print(printResult)
end

Print("a", "b", "c")
