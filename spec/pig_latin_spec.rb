require './lib/pig_latin.rb'

describe PigLatin do

  before do
    @string = "This is a test for the program"
  end

  it "first letter of word is a vowel" do
    expect(PigLatin.translate("String")[0]).to eq ("i")
  end

  it "returns ay at the end of word" do
    expect(PigLatin.translate("String")[0]).to eq ("i")
  end

end
