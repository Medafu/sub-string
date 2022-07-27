dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)

  # word_arr = string.downcase.split(" ")
  # word_arr.map! do |word|
  #   word = word.split("").map! do |char|
  #     unless char >= 'a' && char <= 'z'
  #       char = ""
  #       char
  #     end
  #     char
  #   end
  #   word.join("")
  # end

  dict.reduce(Hash.new(0)) do |result, elem|
    if elem.length > string.length
      findResult = Regexp.new(string) =~ elem
    else
      findResult = string =~ Regexp.new(elem)
    end

    unless findResult == nil
      result[elem] += 1
    end
    result
  end
end