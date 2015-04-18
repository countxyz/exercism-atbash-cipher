class AtbashCipher

  def initialize substitution
    @substitution    = substitution.split(//)
    @alphabet_symbol = (:a..:z).to_a
    @alphabet_string = ('a'..'z').to_a
    @atbash_array    = @alphabet_symbol.zip @alphabet_string.reverse
    @cipher          = @atbash_array.to_h
  end

  def encode
    @substitution.map! { |char| @cipher[char.to_sym] }
    @substitution.join
  end

  def decode
    @substitution.map! { |char| @cipher.key char.downcase }
    @substitution.compact!
    @substitution.size > 5 ? long_decode_format : short_decode_format
  end

  def short_decode_format
    @substitution.join
  end

  def long_decode_format
    @substitution = @substitution.join
    @substitution.gsub!(/(.{5})(?=.)/, '\1 \2')
  end
end
