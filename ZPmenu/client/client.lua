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
            if btn.name == "๐น Touches Serveur" then 
                OpenMenu("Les touches")
            elseif btn.name == "๐ฑ Tรฉlรฉphone." then
                CloseMenu(true)
            elseif btn.name == "๐งจ Menu Gang." then
                CloseMenu(true)
            elseif btn.name == "๐งพ Menu Job." then
                CloseMenu(true)
            elseif btn.name == "๐  Tomber au sol." then
                CloseMenu(true)
            elseif btn.name == "๐ Ceinture." then
                CloseMenu(true)
            elseif btn.name == "๐ Menu vรชtement." then
                CloseMenu(true)
            elseif btn.name == "๐ Chat." then
                CloseMenu(true)
            elseif btn.name == "โ Lever les mains." then
                CloseMenu(true)
            elseif btn.name == "๐   Gestion voiture." then
                CloseMenu(true)
            elseif btn.name == "๐ป Radio ig" then
                CloseMenu(true)
            elseif btn.name == "๐ป Les commandes" then
                OpenMenu('Les Commandes')
            elseif btn.name == "๐ซ Discord" then
                ExecuteCommand('discord')
                CloseMenu(true)
            elseif btn.name == "๐ฎ Id" then
                ExecuteCommand('id')
                CloseMenu(true)
            elseif btn.name == "๐ Createur" then
                ExecuteCommand('createur')
                CloseMenu(true)
            elseif btn.name == "~r~๐ช Fermer le menu" then
                CloseMenu(true)
            end
        end
    },

    Menu = {
        ["ZP menu:"] = {
            b = {
                {name = "๐น Touches Serveur", ask = "โ", askX = true},
                {name = "๐ป Les commandes", ask = "โ", askX = true},
                {name = "~r~๐ช Fermer le menu"},
            }
        },
            ["Les touches"] = {
                b = {
                    {name = "๐ฑ Tรฉlรฉphone.", ask = "F2", askX = true},
                    {name = "๐งจ Menu Gang.", ask = "F7", askX = true},
                    {name = "๐งพ Menu Job.", ask = "F6", askX = true},
                    {name = "๐  Tomber au sol.", ask = "=", askX = true},
                    {name = "๐ Ceinture.", ask = "X", askX = true},
                    {name = "๐ Menu vรชtement.", ask = "Y", askX = true},
                    {name = "๐ Chat.", ask = "T", askX = true},
                    {name = "โ Lever les mains.", ask = "ยฒ", askX = true},
                    {name = "๐   Gestion voiture.", ask = "L", askX = true},
                    {name = "๐ป Radio ig", ask = "A + F10", askX = true},
                }
            },

            ["Les Commandes"] = {
                b = {
                    {name = "๐ซ Discord", ask = "/discord", askX = true},
                    {name = "๐ฎ Id", ask = "/Id", askX = true},
                    {name = "๐ Createur", ask = "/createur", askX = true},
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
    ESX.ShowNotification("Ce ~p~Menu~w~ a รฉtรฉ ~p~dรฉveloppรฉ~w~ par ~y~ZP leak & dev") 
end