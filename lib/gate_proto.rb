#きっぷを買う→出発駅を入力する→到着駅を入力する
#梅田
#150|十三
#190|150|三国

#駅から駅への料金を配列へ用意する
umeda  = [nil, 150, 190]
juso   = [150, nil, 150]
mikuni = [190, 150, nil]

stations = [umeda, juso, mikuni]
#購入するきっぷを選ぶ
puts "いくらのきっぷを購入しますか？"
puts "梅田
150|十三
190|150|三国"
ticket = gets.to_i

#出発駅を入力する
puts "出発駅を数字で選んでください\n梅田→0 十三→1 三国→2"
enter_station = stations[gets.to_i]

#到着駅を入力する
puts "行き先を数字で選んでください\n梅田→0 十三→1 三国→2"
exit_station = gets.to_i

#下車の可否を出力する
if ticket >= enter_station[exit_station]
    puts "下車可能です"
else
    puts "下車できません"
end
