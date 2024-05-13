local QBCore = exports['qb-core']:GetCoreObject()
local Accounts = {}

function ExploitBan(id, reason)
	MySQL.insert('INSERT INTO bans (name, license, discord, ip, reason, expire, bannedby) VALUES (?, ?, ?, ?, ?, ?, ?)', {
		GetPlayerName(id),
		QBCore.Functions.GetIdentifier(id, 'license'),
		QBCore.Functions.GetIdentifier(id, 'discord'),
		QBCore.Functions.GetIdentifier(id, 'ip'),
		reason,
		2147483647,
		'qb-management'
	})
	TriggerEvent('qb-log:server:CreateLog', 'bans', 'Spiller bannet', 'red', string.format('%s var bannet %s for %s', GetPlayerName(id), 'qb-management', reason), true)
	DropPlayer(id, 'You were permanently banned by the server for: Exploiting')
end

function GetAccount(account)
	return Accounts[account] or 0
end

function AddMoney(account, amount)
	if not Accounts[account] then
		Accounts[account] = 0
	end

	Accounts[account] = Accounts[account] + amount
	MySQL.insert('INSERT INTO management_funds (job_name, amount, type) VALUES (:job_name, :amount, :type) ON DUPLICATE KEY UPDATE amount = :amount',
		{
			['job_name'] = account,
			['amount'] = Accounts[account],
			['type'] = 'boss'
		})
end

function RemoveMoney(account, amount)
	local isRemoved = false
	if amount > 0 then
		if not Accounts[account] then
			Accounts[account] = 0
		end

		if Accounts[account] >= amount then
			Accounts[account] = Accounts[account] - amount
			isRemoved = true
		end

		MySQL.update('UPDATE management_funds SET amount = ? WHERE job_name = ? and type = "boss"', { Accounts[account], account })
	end
	return isRemoved
end

function AddMoneyOkokBanking(account, amount)
	if not Accounts[account] then
		Accounts[account] = 0
	end

	Accounts[account] = Accounts[account] + amount
	MySQL.Async.execute('UPDATE management_funds SET amount = ? WHERE job_name = ?', { Accounts[account], account })
end

function RemoveMoneyOkokBanking(account, amount)
	local isRemoved = false
	if amount > 0 then
		if not Accounts[account] then
			Accounts[account] = 0
		end

		if Accounts[account] >= amount then
			Accounts[account] = Accounts[account] - amount
			isRemoved = true
		end

		MySQL.Async.execute('UPDATE management_funds SET amount = ? WHERE job_name = ?', { Accounts[account], account })
	end
	return isRemoved
end

function TransferMoneyOkokBanking(account, amount, iban)
	if not Accounts[account] then
		Accounts[account] = 0
	end

	Accounts[account] = Accounts[account] + amount
	MySQL.Async.execute('UPDATE management_funds SET amount = ? WHERE iban = ?', { Accounts[account], iban })
end

MySQL.ready(function ()
	local bossmenu = MySQL.query.await('SELECT job_name,amount FROM management_funds WHERE type = "boss"', {})
	if not bossmenu then return end

	for _,v in ipairs(bossmenu) do
		Accounts[v.job_name] = v.amount
	end
end)

RegisterNetEvent("qb-bossmenu:server:withdrawMoney", function(amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'withdrawMoney Exploiting') return end

	local job = Player.PlayerData.job.name
	if RemoveMoney(job, amount) then
		Player.Functions.AddMoney("cash", amount, 'Boss menu withdraw')
		TriggerEvent('qb-log:server:CreateLog', 'bossmenu', 'Ta ut penger', "blue", Player.PlayerData.name.. "Uttak kr" .. amount .. ' (' .. job .. ')', false)
		TriggerClientEvent('QBCore:Notify', src, "Du har tatt ut: kr" ..amount, "success")
	else
		TriggerClientEvent('QBCore:Notify', src, "Du har ikke nok penger!", "error")
	end

	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

RegisterNetEvent("qb-bossmenu:server:depositMoney", function(amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'depositMoney Exploiting') return end

	if Player.Functions.RemoveMoney("cash", amount) then
		local job = Player.PlayerData.job.name
		AddMoney(job, amount)
		TriggerEvent('qb-log:server:CreateLog', 'bossmenu', 'Sett inn penger', "blue", Player.PlayerData.name.. "Innskudd kr" .. amount .. ' (' .. job .. ')', false)
		TriggerClientEvent('QBCore:Notify', src, "Du har satt inn: kr" ..amount, "success")
	else
		TriggerClientEvent('QBCore:Notify', src, "Du har ikke nok penger!", "error")
	end

	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

QBCore.Functions.CreateCallback('qb-bossmenu:server:GetAccount', function(_, cb, jobname)
	local result = GetAccount(jobname)
	cb(result)
end)

-- Get Employees
QBCore.Functions.CreateCallback('qb-bossmenu:server:GetEmployees', function(source, cb, jobname)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'GetEmployees Exploiting') return end

	local employees = {}
	local players = MySQL.query.await("SELECT * FROM `players` WHERE `job` LIKE '%".. jobname .."%'", {})
	if players[1] ~= nil then
		for _, value in pairs(players) do
			local isOnline = QBCore.Functions.GetPlayerByCitizenId(value.citizenid)

			if isOnline then
				employees[#employees+1] = {
				empSource = isOnline.PlayerData.citizenid,
				grade = isOnline.PlayerData.job.grade,
				isboss = isOnline.PlayerData.job.isboss,
				name = '🟢 ' .. isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
				}
			else
				employees[#employees+1] = {
				empSource = value.citizenid,
				grade =  json.decode(value.job).grade,
				isboss = json.decode(value.job).isboss,
				name = '❌ ' ..  json.decode(value.charinfo).firstname .. ' ' .. json.decode(value.charinfo).lastname
				}
			end
		end
		table.sort(employees, function(a, b)
            return a.grade.level > b.grade.level
        end)
	end
	cb(employees)
end)

-- Grade Change
RegisterNetEvent('qb-bossmenu:server:GradeUpdate', function(data)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local Employee = QBCore.Functions.GetPlayerByCitizenId(data.cid)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'GradeUpdate Exploiting') return end
	if data.grade > Player.PlayerData.job.grade.level then TriggerClientEvent('QBCore:Notify', src, "Du kan ikke bli forfremmet til denne stillingen!", "error") return end
	
	if Employee then
		if Employee.Functions.SetJob(Player.PlayerData.job.name, data.grade) then
			TriggerClientEvent('QBCore:Notify', src, "Vellyket forfremming!", "success")
			TriggerClientEvent('QBCore:Notify', Employee.PlayerData.source, "Du har blitt forfremmet til" ..data.gradename..".", "success")
		else
			TriggerClientEvent('QBCore:Notify', src, "Stillingen finnes ikke, prøv på nytt.", "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', src, "Person er ikke våken, prøv senere.", "error")
	end
	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

-- Fire Employee
RegisterNetEvent('qb-bossmenu:server:FireEmployee', function(target)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local Employee = QBCore.Functions.GetPlayerByCitizenId(target)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'FireEmployee Exploiting') return end

	if Employee then
		if target ~= Player.PlayerData.citizenid then
			if Employee.PlayerData.job.grade.level > Player.PlayerData.job.grade.level then TriggerClientEvent('QBCore:Notify', src, "Du kan ikke sparke denne personen!", "error") return end
			if Employee.Functions.SetJob("unemployed", '0') then
				TriggerEvent("qb-log:server:CreateLog", "bossmenu", "Spark fra stilling", "red", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. ' vellykket oppsigelse ' .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.job.name .. ")", false)
				TriggerClientEvent('QBCore:Notify', src, "Ansatt oppsagt!", "success")
				TriggerClientEvent('QBCore:Notify', src, "Employee fired!", "success")
TriggerEvent('ps-multijob:server:removeJob', target)
				TriggerClientEvent('QBCore:Notify', Employee.PlayerData.source , "Du har fått sparken! Lykke tell.", "error")
			else
				TriggerClientEvent('QBCore:Notify', src, "Error..", "error")
			end
		else
			TriggerClientEvent('QBCore:Notify', src, "Du kan ikke sparke deg selv", "error")
		end
	else
		local player = MySQL.query.await('SELECT * FROM players WHERE citizenid = ? LIMIT 1', { target })
		if player[1] ~= nil then
			Employee = player[1]
			Employee.job = json.decode(Employee.job)
			if Employee.job.grade.level > Player.PlayerData.job.grade.level then TriggerClientEvent('QBCore:Notify', src, "Du kan ikke sparke denne personen!", "error") return end
			local job = {}
			job.name = "unemployed"
			job.label = "Unemployed"
			job.payment = QBCore.Shared.Jobs[job.name].grades['0'].payment or 500
			job.onduty = true
			job.isboss = false
			job.grade = {}
			job.grade.name = nil
			job.grade.level = 0
			MySQL.update('UPDATE players SET job = ? WHERE citizenid = ?', { json.encode(job), target })
			TriggerClientEvent('QBCore:Notify', src, "Ansatt oppsagt!", "success")
			TriggerClientEvent('QBCore:Notify', src, "Employee fired!", "success")
TriggerEvent('ps-multijob:server:removeJob', target)
			TriggerEvent("qb-log:server:CreateLog", "bossmenu", "Spark ansatt", "red", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. ' vellykket oppsigelse ' .. Employee.PlayerData.charinfo.firstname .. " " .. Employee.PlayerData.charinfo.lastname .. " (" .. Player.PlayerData.job.name .. ")", false)
		else
			TriggerClientEvent('QBCore:Notify', src, "Person er ikke i byen.", "error")
		end
	end
	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

-- Recruit Player
RegisterNetEvent('qb-bossmenu:server:HireEmployee', function(recruit)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local Target = QBCore.Functions.GetPlayer(recruit)

	if not Player.PlayerData.job.isboss then ExploitBan(src, 'HireEmployee Exploiting') return end

	if Target and Target.Functions.SetJob(Player.PlayerData.job.name, 0) then
		TriggerClientEvent('QBCore:Notify', src, "Du ansatt " .. (Target.PlayerData.charinfo.firstname .. ' ' .. Target.PlayerData.charinfo.lastname) .. "  " .. Player.PlayerData.job.label .. "", "success")
		TriggerClientEvent('QBCore:Notify', Target.PlayerData.source , "Du ble ansatt som " .. Player.PlayerData.job.label .. "", "success")
		TriggerEvent('qb-log:server:CreateLog', 'bossmenu', 'Rekrutter', "lightgreen", (Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname).. " rekruttert " .. (Target.PlayerData.charinfo.firstname .. ' ' .. Target.PlayerData.charinfo.lastname) .. ' (' .. Player.PlayerData.job.name .. ')', false)
	end
	TriggerClientEvent('qb-bossmenu:client:OpenMenu', src)
end)

-- Get closest player sv
QBCore.Functions.CreateCallback('qb-bossmenu:getplayers', function(source, cb)
	local src = source
	local players = {}
	local PlayerPed = GetPlayerPed(src)
	local pCoords = GetEntityCoords(PlayerPed)
	for _, v in pairs(QBCore.Functions.GetPlayers()) do
		local targetped = GetPlayerPed(v)
		local tCoords = GetEntityCoords(targetped)
		local dist = #(pCoords - tCoords)
		if PlayerPed ~= targetped and dist < 10 then
			local ped = QBCore.Functions.GetPlayer(v)
			players[#players+1] = {
			id = v,
			coords = GetEntityCoords(targetped),
			name = ped.PlayerData.charinfo.firstname .. " " .. ped.PlayerData.charinfo.lastname,
			citizenid = ped.PlayerData.citizenid,
			sources = GetPlayerPed(ped.PlayerData.source),
			sourceplayer = ped.PlayerData.source
			}
		end
	end
		table.sort(players, function(a, b)
			return a.name < b.name
		end)
	cb(players)
end)


            -- Jobs Creator (jobs_creator) integrations
            exports("getAccounts", function() 
                return Accounts
            end)
            exports("addMoney", AddMoney)
            exports("removeMoney", RemoveMoney)
        