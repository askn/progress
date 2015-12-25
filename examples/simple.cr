require "../src/progress"

puts "Starting.."
bar = ProgressBar.new(20)
bar.width = 40

until bar.done?
  bar.inc
  sleep 0.5
end

puts "Bye!"
