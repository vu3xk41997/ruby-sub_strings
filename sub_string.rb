dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def sub_string(string, array)
  result = Hash.new(0)
  downcase_string = string.downcase
  array.each do |substring|
    count = downcase_string.scan(substring).length
    if count > 0
      result[substring] = count
    end
  end
  return result
end

p sub_string("Howdy partner, sit down! How's it going?", dictionary)