class WordCounter
  def initialize(file_name)
    @file = File.read(file_name)
	puts @file
  end

  #count the words in file
  def count()
	return @file.split.length
  end
  
  #count unique words appearance
  def uniq_count()
	return @file.split.uniq.length
  end
  
  #count frequency of each words.
  def frequency()
	#basic idea: iterate though array of words, look up each word in hash. 
	dictionary = Hash.new
	@words = @file.split
	@words.each{ |word|
		#if exists, add 1 count.
		#if not exist, create the tuple.
		if dictionary[word] == nil then
			#puts "word is empty"
			dictionary[word] = 1
		else
			dictionary[word] = dictionary[word]+1
		end
	}

	return dictionary
  end
end