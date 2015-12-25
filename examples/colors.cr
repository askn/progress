# https://github.com/tj/node-progress/blob/master/examples/colors.js
require "../src/progress"

green = "\u001b[42m \u001b[0m"
red = "\u001b[41m \u001b[0m"

bar = ProgressBar.new
bar.complete = green
bar.incomplete = red
bar.width = 20

until bar.done?
  bar.inc
  sleep 0.03
end
