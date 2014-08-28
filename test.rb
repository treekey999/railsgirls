trans = {:"1" => "壹", :"2" => "貳", :"3" => "參", :"4" => "肆", :"5" => "伍", :"6" => "陸", :"7" => "柒", :"8" => "捌", :"9" => "玖"}

(1..9).each do |cheng|
  puts "-" * 30

  if cheng.to_i == 1
    puts "壹 太簡單了 要跳過!"
    next 
  end

  (1..9).each do |ba_cheng|
    title = "#{trans[cheng.to_s.to_sym]} 乘 #{trans[ba_cheng.to_s.to_sym]} 等於 "
    ans = cheng.to_i * ba_cheng.to_i

    if ans / 10 == 0
      ans = trans[ans.to_s.to_sym]
    else
      business = trans[ (ans/10).to_s.to_sym ]
      fish = trans[ (ans%10).to_s.to_sym ]
      ans = "#{business} 拾 #{fish}"
    end

    puts title + "=>" +ans

  end

end

