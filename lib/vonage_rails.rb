require 'vonage'
require 'forwardable'

module Vonage
  class << self
    extend Forwardable

    attr_accessor :client

    def_delegators :@client, :account, :alerts, :applications, 
                   :conversations, :conversions, :files, :messages, 
                   :messaging, :numbers, :number_insight, :number_insight_2,
                   :pricing, :redact, :secrets, :sms, :signature, :subaccounts,
                   :tfa, :users, :verify, :verify2, :video, :voice
                   
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
