# frozen_string_literal: true

lines = File.readlines('input.txt')

valid_count = lines.count do |line|
  # 1-13 r: gqdrspndrpsrjfjx
  min, max, char, password = line.match(/\A(\d+)\-(\d+) ([a-z])\: (.+)\Z/).captures

  ((min.to_i)..(max.to_i)).cover?(password.count(char))
end

puts valid_count
