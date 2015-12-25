# **[==..]** progress

Progress bar

[▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░]  20.00 %

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

`inc`

`tick`

`set`

`done`

`done?`

`current`

## Options

`complete`

`incomplete`

`step`

`width`

`total`

## Contributing

1. Fork it ( https://github.com/askn/progress/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [askn](https://github.com/askn) Aşkın Gedik - creator, maintainer
