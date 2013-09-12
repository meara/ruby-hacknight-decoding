def caesar(word)
  keyword = word.split(//)
  alphabet = ("A".."Z").to_a
  index_array = []
  keyword.each {|letter| index_array << alphabet.rindex(letter) }
  puts index_array.inspect
  
  25.times do 
    temp_array = []
    alphabet.rotate!
    index_array.each do |position|
       temp_array << alphabet[position] 
    end
    puts temp_array.join
  end
end

def caesar_index(decoded_keyword)
  decoded_keyword = word.split(//)
  alphabet = ("A".."Z").to_a
  index_array = []
  decoded_keyword.each {|letter| index_array << alphabet.rindex(letter) }
  index_array
end

keyword = "RLCOPY"

decoded_keyword = "GARDEN"

cipher = "IONDVQY DZH QNTY KLQRY BVISEK TYHME JERWLF; ZHV YEYOAEW RRBEI WEFZE FI HRGTY EYG UNTH.
SS GLC WLR COEGIEY TYDX V EEK KEIK HVDVQ, OT JHIZY TF PI ZUSK VXEGNXH XUGT DHR FNOLOH SKAI;
VIRONX WLNZ DVDXU, G NVFIFYAIB IAJ, WZOP PUMV ZLRT IK ZMYR CFPI."

def vigenere(cipher, decoded_keyword)
  keyword_index = caesar_index(decoded_keyword)
  alphabet = ("A".."Z").to_a
  cipher_array = cipher.split(//)
  cipher_array.select! {|character| character =~ /\w/ }
  cipher_position_array = []
  cipher_array.each {|letter| cipher_position_array << alphabet.rindex(letter) }
  puts cipher_array.inspect
  puts cipher_position_array.inspect
  cipher_position_array.map {|position| position + keyword_index.rotate!.first }
  puts cipher_position_array.inspect
  decoded_array = []
  cipher_position_array.each { |position| decoded_array << alphabet[position % 26] }
  puts cipher_position_array.inspect
  #i don't know how to put the spaces/punctation back in before we join it back into a string
  #feel like there must be a way though
end

caesar_index(decoded_keyword)
vigenere(cipher, decoded_keyword)


#keyword_index_rotate = Proc.new { |my_array| my_array.rotate!}


# alphabet.each do |letter|
#   letter_index = alphabet.index(letter)
#   shifted_alphabet = alphabet.rotate(letter_index) 
# puts shifted_alphabet.inspect 
#   keyword.each do |keyword_letter|
#     k_index = alphabet.index(keyword_letter)
#     keyword_letter = shifted_alphabet[k_index]
#     #puts keyword.inspect
#   end
# end
