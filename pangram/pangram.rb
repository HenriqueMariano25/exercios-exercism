class Pangram

  ABC = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q",
         "r","s","t","u","v","w","x","y","z"]

  def self.pangram?(string)
    return true if ABC == array_word(string)
    false
  end

  def self.array_word(string)
    string.downcase.scan(/[[:alpha:]]/).sort.uniq
  end
end
