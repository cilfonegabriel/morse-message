MORSE = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}.freeze

def return_char(char)
  return MORSE.key(char) if char

  ''
end

puts return_char('..-.')

def decode_word(string)
  return '' if string.nil?

  decoded = ''
  str_split = string.split
  str_split.each { |char| decoded += return_char(char) }
  decoded
end

puts decode_word('-- -.--')

def decode_frase(frase)
  str = ''
  frase_split = frase.split('   ')
  frase_split.each do |word|
    str += decode_word(word)
    str += ' '
  end
  str
end

puts decode_frase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
