input = File.read("1/input.txt")
elves = []
current_elf = 0
elves[current_elf] = []
input.lines.each do |line|
  if line == "\n"
    current_elf += 1
    elves[current_elf] = []
    next
  end
  elves[current_elf].push line.to_i
end
summed_calories = elves.map(&:sum)
puts "part 1: #{summed_calories.max}"

part_2_answer = summed_calories.sort.last(3).sum
puts "part 2: #{part_2_answer}"
