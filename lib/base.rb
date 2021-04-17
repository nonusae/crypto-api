require 'httparty'

module Api
  class Base
    attr_accessor :options

    def initialize(options)
      @options = options
    end

    def request(type, url, options = {})
      HTTParty.send(type, url, options)
    end

    def parsed_response(response)
      "#{__method__}"
    end
  end
end
