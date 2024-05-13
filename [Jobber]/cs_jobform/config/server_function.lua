if CodeStudio.ServerType == "QB" then 
    QBCore = exports['qb-core']:GetCoreObject()
elseif CodeStudio.ServerType == "ESX" then 
    ESX = exports['es_extended']:getSharedObject()
end



function GetPlayer(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        return Player
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        return Player
    end
end


function GetPlayerIdentifier(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local Ident = Player.PlayerData.citizenid
        return Ident
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local Ident = Player.identifier
        return Ident
    end
end


function GetPlayerJob(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local Job = Player.PlayerData.job.name
        local Label = Player.PlayerData.job.label
        local Rank = Player.PlayerData.job.grade.level
        return Job, Label, Rank
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local Job = Player.job.name
        local Label = Player.job.label
        local Rank = Player.job.grade
        return Job, Label, Rank
    end
end


function GetPlayerName(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local Name = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
        return Name
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local Name = Player.getName()
        return Name
    end
end

function GetPlayerBirth(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local DOB = Player.PlayerData.charinfo.birthdate
        return DOB
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local DOB = Player.get('dateofbirth')
        return DOB
    end
end


function GetPlayerGender(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local Gender = Player.PlayerData.charinfo.gender
        if Gender == 0 then 
            Gender = "Male"
        else
            Gender = "Female"
        end
        return Gender
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local Gender = Player.get('sex')
        if Gender == 'm' then 
            Gender = "Male"
        else
            Gender = "Female"
        end
        return Gender
    end
end




---Add Your Phone Code here


function GetPlayerPhone(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local Phone = Player.PlayerData.charinfo.phone
        return Phone
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local Phone = Player.get('phoneNumber')
        return Phone
    end
end



function SetJob(src, job)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        Player.Functions.SetJob(tostring(job), 1)
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        Player.setJob(tostring(job), 1)
    end
end