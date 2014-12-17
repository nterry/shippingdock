require 'haproxy-tools'

require_relative 'models/route_definition'

module ShippingDock
  module Routing
    class RoutingManager

      def initialize(config_file)
        @config = HAProxy::Config.parse_file(config_file)
      end

      def apply_route(route_definition)

      end

      def remove_route(route_id)

      end
    end
  end
end
