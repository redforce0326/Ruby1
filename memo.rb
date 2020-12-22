require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを入力してください。"
  file_name = gets.to_s
  
  puts "編集内容を入力してください。"
  puts "入力後、Ctrl + D で保存"
  text_content = $stdin.read
  CSV.open("#{file_name}.csv","w") {|n| n << "#{text_content}"}
  
elsif memo_type == 2
  puts "再編集するファイル名を入力してください。"
  reedit_name = $stdin.read
  
  puts "編集内容を入力してください。"
  puts "入力後、Ctrl + D で保存"
  text_content = gets.to_s
  CSV.open("#{reedit_name}.csv","a") {|n| n << "#{text_content}"}
  
else
  puts "再度入力してください。"
end
