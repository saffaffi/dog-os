print("starting turtle test...")

print("checking for solid ground... ")
if turtle.detectDown then
    print("ok")
else
    print("not found")
end

print("checking fuel level... ")
local fuel_case_table = {
    [0] = function()
        print("empty")
    end,
    ["unlimited"] = function()
        print("unlimited")
    end,
    other = function(fuel)
        print("have " .. tostring(fuel) .. " fuel")
    end,
}
local fuel = turtle.getFuelLevel()
if fuel_case_table[fuel] then
    fuel_case_table[fuel]()
else
    fuel_case_table["other"](fuel)
end

print("finished turtle test")
