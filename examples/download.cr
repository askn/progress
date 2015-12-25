# https://github.com/tj/node-progress/blob/master/examples/download.js

require "../src/progress"

contentLength = 128 * 1024

bar = ProgressBar.new
bar.complete = "="
bar.incomplete = " "
bar.total = contentLength

def next_step(bar)
  chunk = rand * 10 * 1024
  bar.tick chunk
  unless bar.done?
    sleep rand
    next_step(bar)
  end
end

next_step(bar)
