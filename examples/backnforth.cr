# https://github.com/tj/node-progress/blob/master/examples/backnforth.js

require "../src/progress"

bar = ProgressBar.new
bar.complete = "="
bar.incomplete = " "
bar.width = 30
bar.total = 100

def forward(bar)
  bar.tick(1)
  if bar.current > 60
    backward(bar)
  else
    sleep 0.02
    forward(bar)
  end
end

def backward(bar)
  bar.tick -1
  if bar.current == 0
    puts
  else
    sleep 0.02
    backward(bar)
  end
end

forward(bar)
