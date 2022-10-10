# frozen_string_literal: true
def stop_words
  File.readlines('./data/stop_words_english.txt').map {|s| s.tr("\r\n", '')}
end

def echo(text)
  text
end


def shout(text)
  text.upcase
end

def repeat(text, factor = 2)
  ([text] * factor).join(' ')
end

def start_of_word(text, limit)
  text[0...limit]
end

def first_word(text)
  text.split.first
end

def titleize(text)
  text.split.each_with_index.map { |w, i| (i.zero? || !stop_words.include?(w))? w.capitalize : w }.join(' ')
end
