# frozen_string_literal: true

module Clients
  module Billing
    module V0
      module Purchases
        class Index
          def circuit
            Circuitbox.circuit(
              self.class.name.underscore.tr('/', '_').to_sym,
              cache: Moneta.new(:Redis),
              time_window: 10,
              sleep_window: 30,
              volume_threshold: 3,
              exceptions: [
                Net::ReadTimeout,
                Net::HTTPBadRequest
              ].freeze
            )
          end

          def call
            circuit.run do
              url = URI.parse('https://my-json-server.typicode.com/typicode/demo/posts')

              http = Net::HTTP.new(url.host, url.port)
              http.use_ssl = true
              http.read_timeout = [0, 1, 2].sample # seconds

              body = http.request_get(url.path).body
              ap body
              body
            end
          end
        end
      end
    end
  end
end
