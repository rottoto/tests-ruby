# frozen_string_literal: true

def time_string(seconds)
  (Time.new(0) + seconds).strftime("%0H:%M:%S")
end
