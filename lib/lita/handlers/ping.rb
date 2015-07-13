require "lita"

module Lita
  module Handlers
    class Ping < Handler
      route(/\W*(p|P)ing\W*$/, :reply, command: true, help: {
        "ping" => "Gives you back a pong if the bot is online and listening."
      })

      def self.default_config(handler_config)
      end
      
      def reply(response)
        response.reply "PoNg pOnG PoNg pOnG"
      end
    end

    Lita.register_handler(Ping)
  end
end
