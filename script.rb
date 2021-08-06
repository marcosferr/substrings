def substrings (phrase,dictionary)
    phrase = phrase.downcase
    dictionary.reduce(Hash.new(0)) do |result,word|    
        result[word] = phrase.scan(word.downcase).count if phrase.include? word.downcase
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)