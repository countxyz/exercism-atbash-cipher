require 'atbash_cipher'

RSpec.describe AtbashCipher do

  describe 'Encoding' do
    it "encodes 'test' to 'gvhg'" do
      expect((AtbashCipher.new 'test').encode).to eq 'gvhg'
    end
  end

  describe 'Decoding' do
    it "decodes 'gvhg' to 'test'" do
      expect((AtbashCipher.new 'gvhg').decode).to eq 'test'
    end
  end
end
