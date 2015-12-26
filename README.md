# **[==..]** progress

Progress bar for Crystal

[▓▓▓▓▓░░░░░░░░░░░░░░░]  67.25 %

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
- [ ] Multiple bar
- [ ] Max bar width

## Contributing

1. Fork it ( https://github.com/askn/progress/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [askn](https://github.com/askn) Aşkın Gedik - creator, maintainer
