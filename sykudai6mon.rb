require"date"
puts ""
puts "会計システム"
puts ""
sen= 5
hyaku= 2
ju= 8
puts "合計金額は#{sen}#{hyaku}#{ju}0円になります"
total = sen*1000+hyaku*100+ju*10
#puts total
  #suteはいるのか？
puts ""
puts "千円札の枚数を入力してください"
oturi_sen = gets.chomp.to_i*1000
puts ""
puts "百円の枚数を入力してください"
oturi_hyaku = gets.chomp.to_i*100
puts ""
puts "十円の枚数を入力してください"
oturi_ju = gets.chomp.to_i*10

rent = oturi_sen+oturi_hyaku+oturi_ju

#puts rent

oturi = rent-total
#puts oturi
puts ""
if oturi < 0
  puts "申し訳ありませんが#{oturi}円たりません"
elsif oturi == 0
  puts "丁度頂きました"
  #puts "またのご利用をお願い致します"
else
  puts "お釣りは#{oturi}円です"
  #puts "またのご利用をお願い致します"
end

puts ""
#today = Date.today
#puts today

#puts ""
#puts "今日誕生日ならタダにします誕生日を教えてください"
#puts ""
#puts "西暦４桁で入力ください"
#seireki = gets.chomp.to_i
#puts ""
#puts "誕生月を２桁で入力ください"
#tuki = gets.chomp.to_i
#puts ""
#puts "誕生日日にちを２桁で入力ください"
#hiniti = gets.chomp.to_i
if oturi < 0
  "もう一度やり直しください"
else
  puts "777チャンスあたればタダ"

  seven = rand(7)
  seven_two = rand(7)
  seven_tree = rand(7)

  tree_seven = [seven,seven_two,seven_tree]

  int = 0
  judge = 0

  tree_seven.each do |tada|
    int += 1
    #puts int
    puts "#{int}個目の数字は#{tada}です"
    #  puts "test"
    judge += tada
    #  puts "test2"
  end
  if judge == 21
    puts "おめでとうございますタダにします"
  else
    puts "残念でした　＾＾；　またお越しください"
  end
end
