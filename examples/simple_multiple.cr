require "../src/multiple_progress"

bars = MultipleProgressBar.new
bars.create(:bar_1)
bars.create(:bar_2)
bars.create(:bar_3)
bars.create(:bar_4)

until bars.all_done?
  bars.inc(:bar_1)
  sleep 0.1
  bars.inc(:bar_2)
  sleep 0.1
  bars.inc(:bar_3)
  sleep 0.1
  bars.inc(:bar_4)
  sleep 0.1
end
