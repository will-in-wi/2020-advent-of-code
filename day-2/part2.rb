# frozen_string_literal: true

lines = File.readlines('input.txt')

valid_count = lines.count do |line|
  # 1-13 r: gqdrspndrpsrjfjx
  first, second, char, password = line.match(/\A(\d+)\-(\d+) ([a-z])\: (.+)\Z/).captures

  (password[first.to_i - 1] == char) ^ (password[second.to_i - 1] == char)
end

puts valid_count
