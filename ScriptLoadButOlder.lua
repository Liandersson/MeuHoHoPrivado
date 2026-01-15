- if _G.HOHO_RAN then return end

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

-- Notificação personalizada simplificada
local function notify(msg, duration)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "HoHo Hub",
		Text = msg,
		Icon = "rbxassetid://16276677105",
		Duration = duration or 5
	})
end

notify("Bem-vindo ao HoHo Hub Privado!", 3)
notify("Carregando script...", 2)

-- Lista de jogos atualizada com SEU GitHub
local list = {
	--Adopt Me
	[383310974] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/AdoptMe.lua'))()",

	--Fisch
	[5750914919] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/Fisch.lua'))()",

	--Sol's RNG
	[5361032378] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/SolRNG.lua'))()",

	--Blade Ball
	[4777817887] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/BladeBall.lua'))()",

	--Honkai Star Rail Simulator
	[5477548919] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/HonkaiStarRailSimulator.lua'))()",

	--Blox Fruit
	[994732206] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/BloxFruit.lua'))()",

	--King Legacy
	[1451439645] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/KingLegacy.lua'))()",

	--Collect All Pets
	[3359505957] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/CollectAllPets.lua'))()",

	--Anime Defense Simulator
	[4205109410] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/AnimeDefenseSimulator.lua'))()",

	--Anime Soul Simulator
	[4098816381] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/AnimeSoulSimulator.lua'))()",

	--GPO
	[648454481] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/GPO.lua'))()",

	--Ro Fruit
	[3904583189] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/GameScripts/RoFruit.lua'))()",
}

_G.HoHoLoaded = true

-- Configura chave falsa para compatibilidade
_G.MY_KEY_IS = "NO_KEY_REQUIRED"
if script_key then
	_G.MY_KEY_IS = script_key
end

-- Verifica se o jogo atual está na lista
if list[game.GameId] ~= nil then
	notify("Jogo suportado encontrado!", 2)
	loadstring(list[tonumber(game.GameId)])()
else
	notify("Este jogo não está na lista específica", 4)
	notify("Carregando script universal...", 3)
	
	-- Remove qualquer interface antiga
	if game:GetService("CoreGui"):FindFirstChild("Hоhо_раssсhесk") then
		game:GetService("CoreGui"):FindFirstChild("Hоhо_раssсhесk"):Destroy()
	end
	
	-- Carrega script universal
	_G.loadCustomId = "b358ee69695f62450471edf52317559a"
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/UniversalScript.lua"))()
end
