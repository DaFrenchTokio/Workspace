getgenv().Azu = {
    Services = {
        "CoreGui",
        "Players",
        "TextService",
        "UserInputService",
        "TweenService",
        "HttpService",
        "MarketplaceService",
        "RunService",
        "TeleportService",
        "StarterGui",
        "GuiService",
        "Lighting",
        "ContextActionService",
        "NetworkClient",
        "ReplicatedStorage",
        "GroupService",
        "PathfindingService",
        "SoundService",
        "Teams",
        "StarterPlayer",
        "InsertService",
        "Chat",
        "ProximityPromptService",
        "Stats",
        "MaterialService"
    },
    VariableService = {},
    notifications = true
}

function Azu:Service(srv)
    for _, service in next, Azu.Services do
        if service == srv then
            return game:GetService(srv)
        end
    end

    mappings = {
        {'CG','cg','Core','core','CGui','cgui','CoreG','coreg'},
        {'PLRS','plrs','plr','Plr','Plrs'},
        {'TXTS','Text','TextS','TxTService','txtservice'},
        {'User','user','uinput','Uinput','userI','useri'},
        {'Tween','tween','tweensrv','tweens','tweenS'},
        {'Http','http','httpsrv','https','httpS'},
        {'Market','market','marketplacesrv','markets','marketS'},
        {'RS','Run','rs','run','runs','runS'},
        {'TPS','TS','tps','ts','tsrv','teleportserv'},
        {'SG','sg','StartG','startg','startgui'},
        {'GUIS','guis','guisrv','Guisrv','guiS'},
        {'Light','light','lights','Lights'},
        {'Context','context','contextsrv','contexts'},
        {'N','n','NC','nc','net','Net','network', 'Network'},
        {'RStorage','Rstorage','rstorage','storage','rstore'},
        {'Group','group','groups','groupS'},
        {'Path','path','pathfind','Pathfind'},
        {'Sound','sound','sounds','soundS'},
        {'T','t','Tms','tms','Team','team'},
        {'SP','sp','StartP','startp','startplayer'},
        {'I','i','Insert','insert','InsertS','inserts','insertS'},
        {'C','Cht','cht'},
        {'PPS','pps','Proximityps','proximityps'},
        {'S','s','stat','stts'},
        {'Material','materialS','materials','MaterialS'}
    }

    if table.find({'CG','cg','Core','core','CGui','cgui','CoreG','coreg'}, srv) then                        -- Core Gui
        return game:GetService(Azu.Services[1])
    elseif table.find({'PLRS','plrs','plr','Plr','Plrs'}, srv) then                                         -- Players
        return game:GetService(Azu.Services[2])
    elseif table.find({'TXTS','Text','TextS','TxTService','txtservice'}, srv) then                          -- TextService
        return game:GetService(Azu.Services[3])
    elseif table.find({'User','user','uinput','Uinput','userI','useri'}, srv) then                          -- UserInputService
        return game:GetService(Azu.Services[4])
    elseif table.find({'Tween','tween','tweensrv','tweens','tweenS'}, srv) then                             -- TweenService
        return game:GetService(Azu.Services[5])
    elseif table.find({'Http','http','httpsrv','https','httpS'}, srv) then                                  -- HttpService
        return game:GetService(Azu.Services[5])
    elseif table.find({'Market','market','marketplacesrv','markets','marketS'}, srv) then                   -- MarketplaceService
        return game:GetService(Azu.Services[6])
    elseif table.find({'RS','Run','rs','run','runs','runS'}, srv) then                                      -- RunService
        return game:GetService(Azu.Services[7])
    elseif table.find({'TPS','TS','tps','ts','tsrv','teleportserv'}, srv) then                              -- TeleportService
        return game:GetService(Azu.Services[8])
    elseif table.find({'SG','sg','StartG','startg','startgui'}, srv) then                                   -- StarterGui
        return game:GetService(Azu.Services[9])
    elseif table.find({'GUIS','guis','guisrv','Guisrv','guiS'}, srv) then                                   -- GuiService
        return game:GetService(Azu.Services[10])
    elseif table.find({'Light','light','lights','Lights'}, srv) then                                        -- Lighting
        return game:GetService(Azu.Services[11])
    elseif table.find({'Context','context','contextsrv','contexts'}, srv) then                              -- ContextActionService
        return game:GetService(Azu.Services[12])
    elseif table.find({'N','n','NC','nc','net','Net','network', 'Network'}, srv) then                       -- NetworkClient
        return game:GetService(Azu.Services[13])
    elseif table.find({'RStorage','Rstorage','rstorage','storage','rstore'}, srv) then                      -- ReplicatedStorage
        return game:GetService(Azu.Services[14])
    elseif table.find({'Group','group','groups','groupS'}, srv) then                                        -- GroupService
        return game:GetService(Azu.Services[15])
    elseif table.find({'Path','path','pathfind','Pathfind'}, srv) then                                      -- PathfindingService
        return game:GetService(Azu.Services[16])
    elseif table.find({'Sound','sound','sounds','soundS'}, srv) then                                        -- SoundService
        return game:GetService(Azu.Services[17])
    elseif table.find({'T','t','Tms','tms','Team','team'}, srv) then                                        -- Teams
        return game:GetService(Azu.Services[18])
    elseif table.find({'SP','sp','StartP','startp','startplayer'}, srv) then                                -- StarterPlayer
        return game:GetService(Azu.Services[19])
    elseif table.find({'I','i','Insert','insert','InsertS','inserts','insertS'}, srv) then                  -- InsertService
        return game:GetService(Azu.Services[20])
    elseif table.find({'C','Cht','cht'}, srv) then                                                          -- Chat
        return game:GetService(Azu.Services[21])
    elseif table.find({'PPS','pps','Proximityps','proximityps'}, srv) then                                  -- ProximityPromptService
        return game:GetService(Azu.Services[22])
    elseif table.find({'S','s','stat','stts'}, srv) then                                                    -- Stats
        return game:GetService(Azu.Services[23])
    elseif table.find({'Material','materialS','materials','MaterialS'}, srv) then                           -- MaterialService
        return game:GetService(Azu.Services[24])
    end

    return nil
end

Azu.VariableService = {
    Players = Azu:Service('plr'),
    LocalPlayer = nil,

    TeleportService = Azu:Service('ts')
}

Azu.VariableService.LocalPlayer = Azu.VariableService.Players.LocalPlayer



function Azu:Rejoin() Azu.VariableService.TeleportService:Teleport(game.PlaceId, Azu.VariableService.LocalPlayer) end
function Azu:Notification(str) print(str) end
function Azu:ExploitIncompatibility(err) error("Your exploit doesn't have the ability to use the " .. err) end
function Azu:IsNumber(str) if tonumber(str) ~= nil or str == 'inf' then return true end end
function Azu:ToClipboard(str) local base = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) if base then base(str) if Azu.notifications then Azu:Notification('Copied to clipboard') end else Azu:ExploitIncompatibility('clipboard') end end

function Azu:GetCharacter(Player) if Player.Character ~= nil then return Player.Character end end
function Azu:GetHumanoid(Player) Char = Azu:GetCharacter(Player) if Char then Humanoid = Char:FindFirstChild('Humanoid') if Humanoid then return Humanoid else return false end else return false end end
function Azu:GetHumanoidRootPart(Player) Char = Azu:GetCharacter(Player) if Char then HumanoidRootPart = Char:FindFirstChild('HumanoidRootPart') if HumanoidRootPart then return HumanoidRootPart else return false end else return false end end


