require './caesar_cipher.rb'

RSpec.describe CaesarCipher do
	describe "#cipher" do
		it "returns a user input string, shifted and user input amount of letters" do
			caesar_cipher = CaesarCipher.new
			expect(caesar_cipher.cipher("hello", 5)).to eql("mjqqt")
		end

		it "returns a cipherd string, while maintaining capitalization." do
			caesar_cipher = CaesarCipher.new
			expect(caesar_cipher.cipher("Hello", 5)).to eql("Mjqqt")
		end

		it "returns a cipherd string, while ignoring spaces." do 
			caesar_cipher = CaesarCipher.new
			expect(caesar_cipher.cipher("Hello Chris", 4)).to eql("Lipps Glvmw")
		end

		it "returns a ciphered string, while ignoring punctuation." do
			caesar_cipher = CaesarCipher.new
			expect(caesar_cipher.cipher("Hello Chris!", 4)).to eql("Lipps Glvmw!")
		end
	end
end