require "../src/progress"

module WithProgress
def each_with_progress(&block)
  bar = ProgressBar.new
  bar.total=self.size
  bar.incomplete="."
  bar.complete="o"
  self.each do |i|
    yield i
    bar.inc
  end
end
end


struct Range
  include WithProgress
end

class Array
  include WithProgress
end


puts "Range Demo:"
(1...20).each_with_progress do |n|
  sleep 0.5
end

puts "Array Demo:"
numbers=[4,8,15,16,23,42]

numbers.each_with_progress do |nr|
  sleep 0.5
end

