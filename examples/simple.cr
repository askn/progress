require "../src/progress"

bar = ProgressBar.new(20)
bar.width = 40

until bar.done?
  bar.inc
  sleep 0.1
end
