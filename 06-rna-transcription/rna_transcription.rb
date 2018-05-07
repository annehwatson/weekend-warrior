class Complement
  def self.of_dna(dna)
    dna.upcase!

    dna_hash = {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }

    rna = ""
    i = 0

    dna.length.times do

      if dna_hash["#{dna[i]}"] == nil
        raise ArgumentError.new("Not a valid input")
      else
        rna << dna_hash["#{dna[i]}"]
        i += 1
      end
    end
    return rna
  end

  def self.of_rna(rna)
    rna.upcase!

    rna_hash = {
      "C" => "G",
      "G" => "C",
      "A" => "T",
      "U" => "A"
    }

    dna = ""
    i = 0

    rna.length.times do
      if rna_hash["#{rna[i]}"] == nil
        raise ArgumentError.new("Not a valid input")
      else
        dna << rna_hash["#{rna[i]}"]
        i += 1
      end
    end
    return dna
  end

end
