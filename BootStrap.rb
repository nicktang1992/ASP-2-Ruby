load 'WordCounter.rb'

#initialize wordCounter
counter = WordCounter.new("testFile.txt");
puts counter.count
puts counter.uniq_count
puts counter.frequency

#puts 'Hello, world!'
