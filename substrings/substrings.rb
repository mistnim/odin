#!/usr/bin/env ruby
def substrings sentence, dict
  hash = {}
  sentence = sentence.downcase
  dict.each do |w|
    count = 0
    sentence.scan(w) { count += 1 }
    hash[w] = count if count > 0
  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
