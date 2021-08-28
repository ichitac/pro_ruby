#HitAndBlowをする素晴らしいプログラムです
#はじめに難易度を決定する　
difficulty = 0
puts "難易度を選択してください　数字が大きければそれだけ難しくなります"
puts "選択できる難易度は1-3までです"
difficulty = gets.to_i
if 1 <= difficulty && difficulty <= 3
  puts "難易度選択を完了しました！なるべく少ない回数で正解しましょう！"
else

  while difficulty > 1 or 3 < difficulty do
    puts "入力エラー！指定された範囲の数字を入力してください"
    difficulty = gets.to_i
  end
end
#　
#これ以降は難易度選択後に桁数が変わるため、そこの修正からです
difficulty += 3
#正解となる数字を決定する
correct_answer = []
tmp_num = []
while correct_answer.size != difficulty do
  tmp_num = rand(10)
  if correct_answer.include?(tmp_num)
    next
  end
  correct_answer.push(tmp_num)
end

#各判定に使う変数を初期化して処理を開始する
answer = []
hit_count = 0
blow_count = 0
answer_count = 0
puts "#{difficulty}桁の数字を入力してください"
#以下機能の追加に応じて開放
#puts "”end”を入力で終了"
while hit_count != difficulty do
  answer_count += 1
  input_answer = gets.to_i

  difficulty.times do |c|
    answer[c] = input_answer % 10
    input_answer /= 10
  end

  #Hitしているかどうか確認
  difficulty.times do |o|
    if answer[o] == correct_answer[o]
      hit_count += 1
    end
  end

  # Blowしているかどうか確認
  difficulty.times do |o|
    if correct_answer.include?(answer[o])
      blow_count += 1
    end
  end

  #総じて結果はどうだったか
  if hit_count != difficulty
    print "＞＞＞#{hit_count}Hit!" 
    puts  "#{blow_count - hit_count}Blow!"
    hit_count = 0
    blow_count = 0
  end
end

puts "正解です！おめでとう！"
puts "正解までにかかった回答数は・・・#{answer_count}回です！"
if answer_count <= 10
  puts "素晴らしい結果でした！またのお越しをお待ちしております！"
elsif answer_count >= 15
  puts "少しばかり時間がかかったようですね！次は頑張りましょう！"
end
puts "Thank you for play!"