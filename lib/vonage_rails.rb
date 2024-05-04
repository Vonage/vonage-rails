require 'vonage'
require 'forwardable'
require 'ostruct'

module Vonage
  class << self
    extend Forwardable

    attr_accessor :client

    def_delegators :@client, *::Vonage::Client.instance_methods(false) - [:config]
                   
    def setup(&block)
      config = OpenStruct.new 
      config.instance_eval(&block)
      self.client = ::Vonage::Client.new(
        api_key: config.api_key,
        api_secret: config.api_secret,
        signature_secret: config.signature_secret,
        application_id: config.application_id,
        private_key: config.private_key.present? && File.exist?(config.private_key) ? File.read(config.private_key) : config.private_key
      )
    end
  end
end
