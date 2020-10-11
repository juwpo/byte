if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__
  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Какое число преобразовать в байты?"
number = gets.chomp.to_s
puts "В числе #{number} - #{number.size} байт"
puts "Какую строку преобразовать в байты?"
string = gets.chomp.to_s
print  "В строке \"#{string}\" - #{string.bytesize} байт"