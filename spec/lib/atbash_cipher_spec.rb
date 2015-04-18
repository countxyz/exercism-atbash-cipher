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

    it 'decodes sentences with 5 letter boundaries' do
      sentence = 'The quick brown fox jumps over the lazy dog.'
      response = 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
      expect((AtbashCipher.new sentence).decode).to eq response
    end
  end
end
