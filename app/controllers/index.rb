get '/' do
  erb :index
end

post '/' do
  @user_word = params[:user_word]
  @user_word_sorted = @user_word.downcase.split(//).sort.join
  @anagram_objects = Word.where("sorted_word = ?", @user_word_sorted)
  @anagrams = []

  @anagram_objects.each do |word|
    @anagrams << word.word
  end

  p @anagrams
  erb :index#, :layout => false   #disables layout rendering (this is a partial)
end  
