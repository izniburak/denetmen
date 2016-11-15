# denetmen

[![Build Status](https://travis-ci.org/izniburak/denetmen.svg?branch=master)](https://travis-ci.org/izniburak/denetmen)

useful micro check library for Crystal Lang.

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  denetmen:
    github: izniburak/denetmen
```


## Usage


```crystal
require "denetmen"


"info@crystal-lang.com".email? # true
"crystal-lang.com".domain? # true
"http://crystal-lang.com/".url? # true

# and more...

```

## String Methods

- email?
- domain?
- url?
- ipv4?
- ipv6?
- mac_address?
- hex_color?
- hex?
- alpha?(locale = "en-US")
- alphanum?(locale = "en-US")
- numeric?
- md5?
- base64?
- lower?
- upper?
- slug?
- time_string?
- credit_card?
- phone?(locale = "en-US")
- affirmative?

## Number Methods

- positive?
- negative?
- zero?
- div?(n)
- above?(n)
- below?(n)


## Contributing

1. Fork it ( https://github.com/izniburak/denetmen/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [izniburak](https://github.com/izniburak) İzni Burak Demirtaş - creator, maintainer
