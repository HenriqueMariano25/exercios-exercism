class Complement
    CONVERT = {"C" => "G", "G" => "C", "T" => "A","A" => "U"}

    def self.of_dna(string)
        string.chars.each_with_object('') { |letter, rna| rna << CONVERT[letter] }
    end
end
