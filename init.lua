local games = {
    ["bgsi"] = {
        Name = "Bubble Gum Simulator Infinity",
        PlaceId = 85896571713843
    }
}

local baseUrl = "https://raw.githubusercontent.com/Xan888/XanHub/main/"

for fileName, gameInfo in pairs(games) do
    if game.PlaceId == gameInfo.PlaceId then
        print("Loading for:", gameInfo.Name)

        local scriptUrl = baseUrl .. fileName .. ".lua"
        loadstring(game:HttpGet(scriptUrl))()

        break
    end
end