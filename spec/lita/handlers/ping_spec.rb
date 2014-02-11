require "spec_helper"

describe Lita::Handlers::Ping, lita_handler: true do
  it { routes_command("ping").to(:reply) }

  describe "#ping" do

    it "replies to a ping command" do
      send_command("ping")
      expect(replies.last).to eq("PONG")
    end

  end
end
