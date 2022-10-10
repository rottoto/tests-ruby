# frozen_string_literal: true

def who_is_bigger(*arr)
  return 'nil detected' if arr.include? nil

  "#{%w[a b c].at(arr.index(arr.max))} is bigger"
end

def reverse_upcase_noLTA(text)
  text.upcase.reverse.chars.reject { |i| ['L', 'T', 'A'].include?(i) }.join('')
end

def array_42(arr)
  arr.include?(42)
end

def magic_array(arr)
  arr.flatten.sort!.map { |i| 2*i }.reject { |i| (i % 3).zero? }.uniq
end
