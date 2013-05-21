File.open('words','r').each do |file|
  file.each_line do |word|
    Word.create(:word => word.chomp, 
                :sorted_word => word.chomp.downcase.split(//).sort.join, 
                :word_length => word.chomp.length)
  end
end
