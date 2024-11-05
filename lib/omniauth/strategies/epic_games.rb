require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class EpicGames < OmniAuth::Strategies::OAuth2
      option :name, "epic_games"

      option :client_options, {
        site: "https://api.epicgames.dev/epic",
        authorize_url: "https://www.epicgames.com/id/authorize",
        token_url: "https://api.epicgames.dev/epic/oauth/v2/token"
      }

      def request_phase
        super
      end

      def callback_phase
        super
      end

      uid { raw_info["account_id"].to_s }

      info do
        {
          account_id: raw_info["account_id"],
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        access_token
      end
    end
  end
end
