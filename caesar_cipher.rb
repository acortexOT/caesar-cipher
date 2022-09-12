# caesar_cipher.rb

def caesar_cipher(string, key = 1)
  cipher = %w(a b c d e f g h i g k l m n o p q r s t u v w x y z)
  array_before_cipher = string.split('')
  array_after_cipher = array_before_cipher.map do |char|
    if cipher.index(char.downcase) == nil
      char
    else 
    key -= 26 if cipher.index(char.downcase) + key > 25
      if char.downcase == char
      cipher[cipher.index(char)+key]
      else
      cipher[cipher.index(char.downcase)+key].upcase
      end
    end
  end
  p "Your coded message:"
  p array_after_cipher.join('')
end

puts "Please enter your cipher key (number between 1 and 26)"
user_key = gets.chomp.to_i

puts "Please enter secret message"
user_message = gets.chomp

caesar_cipher(user_message, user_key)