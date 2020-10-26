function FileExists (path)
    local f = io.open(path,"rb")
    if f then f:close() end
    return f ~= nil
end

function LinesFrom(file)
  if not FileExists(file) then return {} end
  local lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  return lines
end

function Error ()
    print("Error: Please give your current directory (If you're in Scripts, CurrectDir/..) as arg1 when running this application!)")
    os.exit()
end

function PrintLines(stringArray)
    for i = 1, #stringArray do
        print(stringArray[i])
    end
end