# **[==..]** progress

Progress bar for Crystal

![Colored Progress Bar](/images/colors_progress.gif)

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  progress:
    github: askn/progress
```

## Usage

```crystal
require "progress"

bar = ProgressBar.new
bar.width = 40

until bar.done?
  bar.inc
  sleep 0.1
end
```

```crystal
require "multiple_progress"

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
```

![Simple Progress Bar](/images/simple_progress.gif)
![Simple Multiple Progress Bar](/images/simple_multiple_progress.gif)

## Functions

`inc`: a step increase to current tick and print

`tick(n)`: add to current tick and print

`set(n)`: Set current tick and print

`done`: finish and print

`done?`: is done ?

`current`: current tick number

`percent`: completion percentage

## Options

`complete`: completion character

`incomplete`: completion character

`step`: default 1

`width`: the displayed width of the progress bar (default: 100)

`total`: total ticks (default: 100)

## TODO

- [ ] Bar format
- [X] Multiple bar
- [ ] Max bar width

## Contributing

1. Fork it ( https://github.com/askn/progress/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [askn](https://github.com/askn) Aşkın Gedik - creator, maintainer
