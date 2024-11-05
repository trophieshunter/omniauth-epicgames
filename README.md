# OmniAuth EpicGames

This is an OmniAuth strategy for authenticating to Epic Games OAuth
service. In order to use it you need to register an application at the
[Epic Games Developer Portal](https://dev.epicgames.com)

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-epicgames'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-epicgames

## Usage

use OmniAuth::Builder do
    provider :epic_games, ENV['EPIC_GAMES_KEY'], ENV['EPIC_GAMES_SECRET']
end

## License

[The MIT License](http://opensource.org/licenses/MIT)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/trophieshunter/omniauth-epicgames.
