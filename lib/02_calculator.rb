# frozen_string_literal: true

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end


def sum(arr)
  return 0 if arr.empty?

  arr.reduce(:+)
end

def multiply(x, y)
  x * y
end

def power(x, y)
  x ** y
end


def factorial(x)
  (1..x).reduce(1, :*)
end
