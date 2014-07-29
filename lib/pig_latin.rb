# require "pig_latin/version"

module PigLatin
  
  def PigLatin.translate(text)
    if text.nil? then return "Translation will appear here." end
    pig_arr = text.split(" ")
    pig_trans_arr = []
    puts text
    pig_arr.each do |x|
      pig_string=""

      first_vowel_index = x.index(/[aeiouy]/)
      x.downcase!
      if x[-1] == "."
        x.chop
      end

      if !x.is_a? String 
        pig_string << x
      elsif first_vowel_index == 0
        pig_string << x<<"ay"
      elsif
        dummy = x.slice(0...first_vowel_index)
        pig_string << x[first_vowel_index..-1]<<dummy<<"ay"
      end
      pig_trans_arr<<pig_string
    end
    return pig_trans_arr.join(" ")
  end
end
