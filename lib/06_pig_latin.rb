
# frozen_string_literal: true

def vowels
  %w[a e i o u y]
end

def consonant_count(word)
  if word.start_with?('qu')
    return 2 + consonant_count(word[2..])
  elsif vowels.include?(word.chars.first)
    return 0
  else
    return 1 + consonant_count(word[1..])
  end
end


def first_consonant_phoneme(word)
  return "qu" if word.start_with?('qu')
  return "" if vowels.include?(word[0])
  word[0...consonant_count(word)]
end

def piglin(word)
  fcp = first_consonant_phoneme(word)
  word[fcp.size..] + fcp + "ay"
end

def translate(text)
  text.split.map { |i| piglin(i) }.join(' ')
end
