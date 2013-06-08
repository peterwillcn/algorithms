require "./insertion_sort.rb"

if ARGV.empty?
  puts "#{__FILE__} [NUMBERS]"
else
  input = ARGV.map(&:to_i)
  InsertionSort.print_result(input, InsertionSort.sort(input))
end

