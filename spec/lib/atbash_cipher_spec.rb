require 'atbash_cipher'

RSpec.describe AtbashCipher do

  it "encodes 'test' to 'gvhg'" do
    string = 'test'
    atbash = AtbashCipher.new string
    expect(atbash.encode).to eq 'gvhg'
  end
end
