# frozen_string_literal: true

# Part 1 used 2. Part 2 used 3.
RESULT_COUNT = 3

entries = File.read('input.txt').split("\n").map(&:to_i)

entries.permutation(RESULT_COUNT) do |nums|
  next unless nums.sum == 2020

  product = nums.inject { |i, memo| i * memo }

  puts product
  break
end
