ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait()
    end
end)

-- Menus
local ZPmenu = {
    Base = { Title = GetPlayerName(), HeaderColor = {0, 0, 0} },
    Data = { currentMenu = "ZP menu:" },
    Events = {
        onSelected = function(self, _, btn, JMenu, menuData, currentButton, currentSlt, result)
            if btn.name == "🎹 Touches Serveur" then 
                OpenMenu("Les touches")
            elseif btn.name == "📱 Téléphone." then
                CloseMenu(true)
            elseif btn.name == "🧨 Menu Gang." then
                CloseMenu(true)
            elseif btn.name == "🧾 Menu Job." then
                CloseMenu(true)
            elseif btn.name == "🛌  Tomber au sol." then
                CloseMenu(true)
            elseif btn.name == "🎗 Ceinture." then
                CloseMenu(true)
            elseif btn.name == "👔 Menu vêtement." then
                CloseMenu(true)
            elseif btn.name == "🖍 Chat." then
                CloseMenu(true)
            elseif btn.name == "☝ Lever les mains." then
                CloseMenu(true)
            elseif btn.name == "🚕   Gestion voiture." then
                CloseMenu(true)
            elseif btn.name == "📻 Radio ig" then
                CloseMenu(true)
            elseif btn.name == "💻 Les commandes" then
                OpenMenu('Les Commandes')
            elseif btn.name == "🎫 Discord" then
                ExecuteCommand('discord')
                CloseMenu(true)
            elseif btn.name == "🔮 Id" then
                ExecuteCommand('id')
                CloseMenu(true)
            elseif btn.name == "🛒 Createur" then
                ExecuteCommand('createur')
                CloseMenu(true)
            elseif btn.name == "~r~🚪 Fermer le menu" then
                CloseMenu(true)
            end
        end
    },

    Menu = {
        ["ZP menu:"] = {
            b = {
                {name = "🎹 Touches Serveur", ask = "→", askX = true},
                {name = "💻 Les commandes", ask = "→", askX = true},
                {name = "~r~🚪 Fermer le menu"},
            }
        },
            ["Les touches"] = {
                b = {
                    {name = "📱 Téléphone.", ask = "F2", askX = true},
                    {name = "🧨 Menu Gang.", ask = "F7", askX = true},
                    {name = "🧾 Menu Job.", ask = "F6", askX = true},
                    {name = "🛌  Tomber au sol.", ask = "=", askX = true},
                    {name = "🎗 Ceinture.", ask = "X", askX = true},
                    {name = "👔 Menu vêtement.", ask = "Y", askX = true},
                    {name = "🖍 Chat.", ask = "T", askX = true},
                    {name = "☝ Lever les mains.", ask = "²", askX = true},
                    {name = "🚕   Gestion voiture.", ask = "L", askX = true},
                    {name = "📻 Radio ig", ask = "A + F10", askX = true},
                }
            },

            ["Les Commandes"] = {
                b = {
                    {name = "🎫 Discord", ask = "/discord", askX = true},
                    {name = "🔮 Id", ask = "/Id", askX = true},
                    {name = "🛒 Createur", ask = "/createur", askX = true},
                }
            },
    }
}

-- Ouverture du Menu

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 288) then
            CreateMenu(ZPmenu)
        end
    end
end)

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local discord = "discord.gg/zpleak"

RegisterCommand("discord", function() 
    ESX.ShowNotification("Voici le discord : ~y~"..discord)
end)

-- id

RegisterCommand("id", function(source, args, rawCommand)
    ESX.ShowNotification("~b~Votre ID est : "..GetPlayerServerId(PlayerId()))
end) 

-- createur

RegisterCommand("createur",function()
    credit()
end)

function credit()
    ESX.ShowNotification("Ce ~p~Menu~w~ a été ~p~développé~w~ par ~y~ZP leak & dev") 
end