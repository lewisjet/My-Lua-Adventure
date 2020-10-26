require("BasicFuntions")
require("GlobalVariables")

print("I hear you")
if not arg[1] then
   Error()
else
     DefaultPath = arg[1]
     print(DefaultPath .. Room["Field"])
   PrintLines(LinesFrom( DefaultPath .. Room["Field"]))
end


