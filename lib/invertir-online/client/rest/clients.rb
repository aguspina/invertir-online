require 'faraday_middleware'

module InvertirOnline
  module Client
    class REST
      def verified_client(token, adapter)
        Faraday.new(url: "#{BASE_URL}/api") do |conn|
          conn.response :json, content_type: /\bjson$/
          conn.headers['Authorization'] = "Bearer #{token}"
          conn.adapter adapter
        end
      end
    end
  end
end
