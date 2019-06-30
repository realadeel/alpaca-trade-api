require "alpaca/trade/api/version"
require "alpaca/trade/api/configuration"

module Alpaca
  module Trade
    module Api
      class Error < StandardError; end
      # Your code goes here...

      class << self
        def configuration
          @configuration ||= Alpaca::Trade::Api::Configuration.new
        end

        def configure
          yield(configuration)
        end

        def reset
          @configuration = Alpaca::Trade::Api::Configuration.new
        end
      end

    end
  end
end