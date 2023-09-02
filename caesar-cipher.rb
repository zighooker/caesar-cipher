def caesar_cipher(input_string, shift)
  lower_alphabet = ("a".."z").to_a
  upper_alphabet = ("A".."Z").to_a
  input_array = input_string.split("")
  output_array = []

  input_array.each do |letter|
    if lower_alphabet.include?(letter.downcase)
      alpha_index = lower_alphabet.find_index(letter.downcase) + shift.to_i
      alpha_index -= 26 if alpha_index >= 26 

      if upper_alphabet.include?(letter)
        output_array.push(upper_alphabet[alpha_index])
      else
        output_array.push(lower_alphabet[alpha_index])
      end
    else
      output_array.push(letter)
    end
  end
  puts "Encoded message:"
  puts output_array.join("").to_s
end

puts "Enter secret message to be encoded:"
user_string = gets.chomp
puts "Enter desired strength of cipher:"
user_shift = gets.chomp

caesar_cipher(user_string, user_shift)