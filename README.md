# OmniAuth EpicGames

This is an OmniAuth strategy for authenticating to Epic Games OAuth
service. In order to use it you need to register an application at the
[Epic Games Developer Portal](https://dev.epicgames.com)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-epicgames'
```

And then execute:

```
$ bundle install
```

## Usage

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :epic_games,
           ENV['EGS_CLIENT_KEY'],
           ENV['EGS_CLIENT_SECRET'],
           { scope: ['basic_profile'].join(' ') }
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/trophieshunter/omniauth-epicgames.

## License

[The MIT License](http://opensource.org/licenses/MIT)

## About

This repo is build and maintained by <a href="https://trophieshunter.com/">trophieshunter.com</a>

<a href="https://trophieshunter.com/">
  <img src="https://cdn.trophieshunter.com/logo-dark.webp" alt="Sponsored by trophieshunter.com" width="160" height="51">
</a>

