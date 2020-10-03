chance = 65
base = 0.08555
JK = 1.512345
DC = 1.621345
hi = 64.542154
hi2 = 65.24514
cal = 0.00008555
wincount = 0
profit1  = 0
nextbet  = base
resetstats()
function dobet()
    chance = math.random(hi*100.00000, hi2*100.00000)/100.00000
    if win then
        wincount+=1
        if (profit > (profit1 + cal)) then
            wincount = 0
            profit1 = profit
            nextbet  = base
        else
            nextbet = previousbet*JK
        end
    else
        wincount = 0
        nextbet  = previousbet*DC
    end
end