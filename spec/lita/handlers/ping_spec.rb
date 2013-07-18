require "spec_helper"

describe Lita::Handlers::Ping, lita_handler: true do
  it { routes_command("ping").to(:reply) }

  describe "#foo" do

    it "replies to the ping" do
      send_command("ping")
      expect(replies.last).to eq("PoNg pOnG PoNg pOnG")
    end
    
  end
end
