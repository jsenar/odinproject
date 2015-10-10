def substrings(string, word_list)
  sub_list = Hash.new
  word_list.each do |item|
    if (string =~ /#{item}/i)
      sub_list[item] = string.scan(/(?=#{item})/i).count
    end    
  end
  return sub_list
end

puts "Enter a word or phrase: "
main_string = gets.chomp
puts "Enter a list of substrings separated by comma and space like: ', ': "
substring_list = gets.chomp.split(', ')
puts substrings(main_string, substring_list)

  
