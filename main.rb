dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)

  word_arr = string.downcase.split(" ")
  word_arr.map! do |word|
    word = word.split("").map! do |char|
      unless char >= 'a' && char <= 'z'
        char = ""
        char
      end
      char
    end
    word.join("")
  end

  dict.reduce(Hash.new(0)) do |result, elem|
    for word in word_arr do
      findResult = word =~ Regexp.new(elem)

      unless findResult == nil
        result[elem] += 1
      end
    end
    result
  end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)