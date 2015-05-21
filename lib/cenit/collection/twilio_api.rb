require "cenit/collection/twilio_api/version"

module Cenit
  module Collection
    require "cenit/collection/twilio_api/build"
    require "cenit/client"

    # bundle exec irb -I lib -r 'cenit/collection/twilio_api'
    # config = {:push_url => "https://www.cenithub.com/api/v1/push", :connection_token => "My Conn Token", :connection_key => "My Conn Key"}
    # config = {:push_url => "https://www.cenithub.com/api/v1/push", :user_token => "My User Token", :user_key => "My User Key"}
    # Cenit::Collection::TwilioApi.push_collection config
    # Cenit::Collection::TwilioApi.shared_collection

    @twilio_api = Cenit::Collection::TwilioApi::Build.new

    # Include Collection Gem dependency
    # require "cenit/collection/[My Dependency Collection]/build"
    # Collection dependency
    # @twilio_api.register_dep(Cenit::Collection::[My Dependency Collection]::Build.new)

    def self.push_collection (config)
      Cenit::Client.push(@twilio_api.shared_collection.to_json, config)
    end

    def self.show_collection
      @twilio_api.shared_collection
    end

    def self.pull_collection (parameters,config)
      @twilio_api.shared_collection
    end

    def self.push_sample(model, config)
      Cenit::Client.push(@twilio_api.sample_data(model).to_json, config)
    end
  end
end