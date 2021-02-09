require 'faraday'
require 'json'

require_relative 'rest/sign_request_middleware'
require_relative 'rest/timestamp_request_middleware'
require_relative 'rest/clients'
require_relative 'rest/endpoints'
require_relative 'rest/methods'

module InvertirOnline
  module Client
    class REST
      BASE_URL = 'https://api.invertironline.com/'.freeze

      def initialize(user: '', password: '',
                     adapter: Faraday.default_adapter)
        @clients = {}
        response = Faraday.post('https://api.invertironline.com/token', username: user, password: password, grant_type: 'password')
        token = JSON.parse(response.body)["access_token"]
        @clients[:signed] = verified_client token, adapter
      end

      METHODS.each do |method|
        define_method(method[:name]) do |path_options = {}, query_options = {}|
          response = @clients[method[:client]].send(method[:action]) do |req|
            endpoint = replace_path_variables(ENDPOINTS[method[:endpoint]], path_options)
            req.url endpoint
            req.params.merge! query_options.map { |k, v| [camelize(k.to_s), v] }.to_h
          end
          response.body
        end
      end

      def self.add_query_param(query, key, value)
        query = query.to_s
        query << '&' unless query.empty?
        query << "#{Faraday::Utils.escape key}=#{Faraday::Utils.escape value}"
      end

      def replace_path_variables(endpoint, options)
        replaced_endpoint = endpoint
        options.each do |k, v|
          replaced_endpoint.gsub!(k.to_s, v)
        end
        replaced_endpoint
      end

      def camelize(str)
        str.split('_')
           .map.with_index { |word, i| i.zero? ? word : word.capitalize }.join
      end
    end
  end
end
