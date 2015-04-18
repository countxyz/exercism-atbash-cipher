class AtbashCipher

  def initialize string
    @string          = string.split(//)
    @alphabet_symbol = (:a..:z).to_a
    @alphabet_string = ('a'..'z').to_a
    @atbash_array    = @alphabet_symbol.zip @alphabet_string.reverse
    @cipher          = @atbash_array.to_h
  end

  def encode
    @string.map! { |char| @cipher[char.to_sym] }
    @string.join
  end
end
