local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('VDC-CarWash:checkMoney',function(source, cb, wash)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local money = 0
    local price = 0
    if Config.PayCash then
        money = xPlayer.Functions.GetMoney('cash')
    else
        money = xPlayer.Functions.GetMoney('bank')
    end
    if wash == "S" then
        price = Config.PriceStandard
    else
        price = Config.PricePremium
    end
	if money >= price then
		if Config.PayCash then
            xPlayer.Functions.RemoveMoney('cash', tonumber(price))
		else
            xPlayer.Functions.RemoveMoney('bank', tonumber(price))
		end
        cb(true)
    else
        cb(false)
    end
end)