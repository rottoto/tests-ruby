# frozen_string_literal: true

def vowels?(letter)
  %w[a e i o u].include?(letter)
end

def consonant_count(word)
  return 2 + consonant_count(word[2..]) if word.start_with?('qu')
  return 1 + consonant_count(word[1..]) unless vowels?(word.chars.first)
  0
end

def first_consonant_phoneme(word)
  word[0...consonant_count(word)]
end

def pig_word(word)
  fcp = first_consonant_phoneme(word)
  word[fcp.size..] + fcp + "ay"
end

def translate(text)
  text.split.map { |i| pig_word(i) }.join(' ')
end
