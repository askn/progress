# https://github.com/tj/node-progress/blob/master/examples/exact.js

require "../src/progress"

bar = ProgressBar.new
bar.width = 40

STEPS = [0.1, 0.25, 0.6, 0.8, 0.4, 0.5, 0.6, 0.2, 0.8, 1.0]

STEPS.each do |i|
  bar.set(i * bar.total)
  sleep 0.5
end
