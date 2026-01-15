local GameId = game.GameId
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local CoreGui = game:GetService("CoreGui")
local Debris = game:GetService("Debris")
local StarterGui = game:GetService("StarterGui")
local ContentProvider = game:GetService("ContentProvider")

repeat task.wait() until game:IsLoaded() and Players.LocalPlayer

plr = Players.LocalPlayer

-- REMOVENDO A DEPENDÊNCIA DO SISTEMA DE CHAVES
-- Usaremos scripts do SEU GitHub

local GameScripts = {
    -- Blox Fruits (seu script principal)
    [994732206] = "https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/BloxFruit.lua",
    
    -- Outros jogos podem ser adicionados aqui
    -- [ID_DO_JOGO] = "https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/NomeDoScript.lua"
    
    -- Blade Ball (exemplo)
    [4777817887] = "https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/BladeBall.lua",
    
    -- Adopt Me (exemplo)
    [383310974] = "https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/AdoptMe.lua",
}

INFO_DOT25_QUAD = TweenInfo.new(.25,Enum.EasingStyle.Quad)

function CoreGuiAdd(gui)
    repeat wait() until pcall(function()
        gui.Parent = CoreGui
    end)
end

PreloadID = {
	"rbxassetid://4560909609",
	"rbxassetid://12187376174",
}

do
	HOHO_Passcheck = Instance.new("ScreenGui")
	INTRO = Instance.new("CanvasGroup")
	Wallpaper = Instance.new("ImageLabel")
	TextHolder = Instance.new("Frame")
	Status = Instance.new("TextLabel")
	UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	Gradient = Instance.new("Frame")
	UIGradient = Instance.new("UIGradient")
	Pattern = Instance.new("ImageLabel")
	Logo = Instance.new("ImageLabel")
	Main = Instance.new("ImageLabel")
	UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	Loader = Instance.new("Frame")
	Content = Instance.new("Frame")
	UIStroke = Instance.new("UIStroke")
	ImageLabel = Instance.new("ImageLabel")
	UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint")
	UICorner = Instance.new("UICorner")

	HOHO_Passcheck.IgnoreGuiInset = true
	HOHO_Passcheck.ResetOnSpawn = false
	HOHO_Passcheck.Name = "HoHo_Loader"
	HOHO_Passcheck.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	HOHO_Passcheck.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    CoreGuiAdd(HOHO_Passcheck)
	HOHO_Passcheck.Enabled = true

	INTRO.BorderSizePixel = 0
	INTRO.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	INTRO.AnchorPoint = Vector2.new(0.5, 0.5)
	INTRO.Size = UDim2.new(0.455271, 0, 0.46186, 0)
	INTRO.ZIndex = 990
	INTRO.Name = "INTRO"
	INTRO.Position = UDim2.new(0.5, 0, 0.5, 0)
	INTRO.BorderColor3 = Color3.fromRGB(0, 0, 0)
	INTRO.Parent = HOHO_Passcheck

	Wallpaper.BorderSizePixel = 0
	Wallpaper.ScaleType = Enum.ScaleType.Fit
	Wallpaper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Wallpaper.Position = UDim2.new(-0.0361702, 0, -0.158876, 0)
	Wallpaper.Name = "Wallpaper"
	Wallpaper.Image = "rbxassetid://16073585738"
	Wallpaper.Size = UDim2.new(1.11064, 0, 1.59989, 0)
	Wallpaper.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Wallpaper.Parent = INTRO

	TextHolder.BorderSizePixel = 0
	TextHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TextHolder.Size = UDim2.new(1, 0, 0.284847, 0)
	TextHolder.BorderColor3 = Color3.fromRGB(30, 30, 30)
	TextHolder.Name = "TextHolder"
	TextHolder.Position = UDim2.new(0, 0, 0.753631, 0)
	TextHolder.Parent = INTRO

	Status.TextWrapped = true
	Status.BorderSizePixel = 0
	Status.TextScaled = true
	Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Status.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Italic)
	Status.Position = UDim2.new(0.120042, 0, 0.254529, 0)
	Status.Name = "Status"
	Status.TextSize = 20
	Status.Size = UDim2.new(0.79993, 0, 0.464041, 0)
	Status.ZIndex = 2
	Status.TextColor3 = Color3.fromRGB(255, 255, 255)
	Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Status.Text = "Loading HoHo Hub..."
	Status.BackgroundTransparency = 1
	Status.Parent = TextHolder

	UITextSizeConstraint.MaxTextSize = 20
	UITextSizeConstraint.Parent = Status

	Gradient.BorderSizePixel = 0
	Gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Gradient.Size = UDim2.new(1, 0, 1, 0)
	Gradient.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Gradient.Name = "Gradient"
	Gradient.Position = UDim2.new(0, 0, 2.11993e-08, 0)
	Gradient.Parent = TextHolder

	UIGradient.Transparency = NumberSequence.new{ NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 0.9) }
	UIGradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(157, 2, 31)), ColorSequenceKeypoint.new(0.466321, Color3.fromRGB(139.758, 6.07549, 31.0759)), ColorSequenceKeypoint.new(0.797927, Color3.fromRGB(46.7098, 28.0691, 31.4853)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30)) }
	UIGradient.Rotation = -90
	UIGradient.Parent = Gradient

	Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
	Pattern.ScaleType = Enum.ScaleType.Tile
	Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pattern.ImageTransparency = 0.6
	Pattern.Position = UDim2.new(6.64996e-05, 0, 0.00124399, 0)
	Pattern.Name = "Pattern"
	Pattern.Image = "rbxassetid://2151741365"
	Pattern.TileSize = UDim2.new(0, 250, 0, 250)
	Pattern.Size = UDim2.new(1, 0, 1, 0)
	Pattern.ZIndex = 0
	Pattern.BackgroundTransparency = 1
	Pattern.Parent = Gradient

	Logo.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Logo.BorderSizePixel = 0
	Logo.ScaleType = Enum.ScaleType.Fit
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.ImageTransparency = 0.5
	Logo.Position = UDim2.new(0.271609, 0, 0.122057, 0)
	Logo.Name = "Logo"
	Logo.Image = "rbxassetid://16073594682"
	Logo.Size = UDim2.new(0.453191, 0, 0.550704, 0)
	Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logo.ZIndex = 2
	Logo.BackgroundTransparency = 1
	Logo.Parent = INTRO

	Main.BorderSizePixel = 0
	Main.ScaleType = Enum.ScaleType.Fit
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Name = "Main"
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.Image = "rbxassetid://16073594682"
	Main.Size = UDim2.new(0.95, 0, 0.95, 0)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BackgroundTransparency = 1
	Main.Parent = Logo

	UIAspectRatioConstraint.AspectRatio = 2.08357
	UIAspectRatioConstraint.Parent = INTRO

	Loader.BorderSizePixel = 0
	Loader.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Loader.Size = UDim2.new(0.999948, 0, 0.0285966, 0)
	Loader.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Loader.Name = "Loader"
	Loader.Position = UDim2.new(0, 0, 0.751682, 0)
	Loader.ZIndex = 2
	Loader.Parent = INTRO

	Content.BorderSizePixel = 0
	Content.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
	Content.Size = UDim2.new(0.462745, 0, 1, 0)
	Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content.Name = "Content"
	Content.Parent = Loader

	UIStroke.Transparency = 0.5
	UIStroke.Parent = Content

	ImageLabel.ImageColor3 = Color3.fromRGB(255, 46, 46)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.Position = UDim2.new(1, 0, .5, 0)
	ImageLabel.AnchorPoint = Vector2.new(.5,.5)
	ImageLabel.Image = "rbxassetid://16073652319"
	ImageLabel.Size = UDim2.new(0.671884, 0, 15.1201, 0)
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Parent = Content

	UIAspectRatioConstraint_1.AspectRatio = 1.49814
	UIAspectRatioConstraint_1.Parent = ImageLabel

	UICorner.CornerRadius = UDim.new(0, 30)
	UICorner.Parent = INTRO

	INTRO.GroupTransparency = 1

    -- Função para carregar scripts do SEU GitHub
    local function loadFromYourGitHub()
        local gameId = GameId
        local scriptUrl = GameScripts[gameId]
        
        if scriptUrl then
            Status.Text = "Loading game script..."
            
            local success, err = pcall(function()
                local scriptContent = game:HttpGet(scriptUrl)
                if scriptContent and #scriptContent > 100 then
                    loadstring(scriptContent)()
                    return true
                end
            end)
            
            if success then
                Status.Text = "Success! Closing loader..."
                StarterGui:SetCore("SendNotification",{
                    Title = "HoHo Hub",
                    Text = "Script loaded successfully!",
                    Icon = "rbxassetid://16276677105",
                    Duration = 3
                })
                return true
            else
                Status.Text = "Error loading script..."
                return false
            end
        end
        
        return false
    end
    
    -- Função para carregar fallback
    local function loadFallback()
        Status.Text = "Loading fallback script..."
        
        local fallbackUrls = {
            "https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/loader.lua",
            "https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/Main.lua",
            "https://raw.githubusercontent.com/Liandersson/MeuHoHoPrivado/main/Script.lua"
        }
        
        for _, url in ipairs(fallbackUrls) do
            local success, err = pcall(function()
                local scriptContent = game:HttpGet(url)
                if scriptContent and #scriptContent > 100 then
                    loadstring(scriptContent)()
                    return true
                end
            end)
            
            if success then
                return true
            end
        end
        
        -- Último fallback
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/main/ScriptLoadButOlder.lua"))()
        return true
    end

    -- Sistema de intro
    if (isfile("HoHo_Intro.txt") and (tick() - tonumber(readfile("HoHo_Intro.txt"))) >= 86400) or not isfile("HoHo_Intro.txt") then
        writefile("HoHo_Intro.txt", tostring(tick()))

        local preload_content = {}
        for i,v in pairs(HOHO_Passcheck:GetDescendants()) do
            table.insert(preload_content,v)
        end
        for i,v in pairs(PreloadID) do
            table.insert(preload_content,v)
        end

        ContentProvider:PreloadAsync(preload_content)

        Content.Size = UDim2.new(0,0,1,0)

        TweenService:Create(INTRO,INFO_DOT25_QUAD,{GroupTransparency = 0}):Play()
        task.wait(.5)
        
        -- Animação de loading
        for i = 1, 20 do
            local progress = i / 20
            TweenService:Create(Content,TweenInfo.new(.1,Enum.EasingStyle.Quad),{Size = UDim2.new(progress,0,1,0)}):Play()
            Status.Text = "Loading... " .. math.floor(progress * 100) .. "%"
            task.wait(math.random(1,5)/50)
        end
        
        Status.Text = "Finalizing..."

        TweenService:Create(INTRO,INFO_DOT25_QUAD,{GroupTransparency = 1}):Play()
        task.wait(.5)
    else
        -- Se não mostrar intro, carrega direto
        task.wait(1)
    end

    -- Carregar o script
    task.wait(1)
    
    local loaded = loadFromYourGitHub()
    
    if not loaded then
        Status.Text = "Trying fallback..."
        task.wait(0.5)
        loadFallback()
    end
    
    -- Fechar interface após carregar
    task.wait(1)
    TweenService:Create(INTRO, INFO_DOT25_QUAD, {GroupTransparency = 1}):Play()
    task.wait(0.5)
    HOHO_Passcheck:Destroy()
end
