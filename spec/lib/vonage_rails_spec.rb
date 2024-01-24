require 'spec_helper'
require 'rails_helper'
require_relative '../../lib/vonage_rails'

describe Vonage do
  describe '.setup' do

    before do
      described_class.setup do |config|
        config.api_key           = 'VONAGE_API_KEY'
        config.api_secret        = 'VONAGE_API_SECRET'
        config.signature_secret  = 'VONAGE_API_SIGNATURE'
        config.application_id    = 'VONAGE_APPLICATION_ID'
        config.private_key       = 'VONAGE_PRIVATE_KEY'
      end
    end

    it 'sets up the config' do
      client = described_class.client

      expect(client).to be_an_instance_of(::Vonage::Client)
      expect(client.config.api_key).to eq('VONAGE_API_KEY')
      expect(client.config.api_secret).to eq('VONAGE_API_SECRET')
      expect(client.config.signature_secret).to eq('VONAGE_API_SIGNATURE')
      expect(client.config.application_id).to eq('VONAGE_APPLICATION_ID')
      expect(client.config.private_key).to eq('VONAGE_PRIVATE_KEY')
    end
  end

  describe 'private key initialization with file path defined' do

    before do 
      described_class.setup do |config|
        config.api_key           = 'VONAGE_API_KEY'
        config.api_secret        = 'VONAGE_API_SECRET'
        config.signature_secret  = 'VONAGE_API_SIGNATURE'
        config.application_id    = 'VONAGE_APPLICATION_ID'
        config.private_key       = './private.key'
      end
    end

    it 'uses file path for private key when it is present' do
      client = described_class.client

      expect(client.config.private_key).to eq('./private.key')
    end
  end

  describe 'private key initialization with no key defined' do

    before do 
      described_class.setup do |config|
        config.api_key           = 'VONAGE_API_KEY'
        config.api_secret        = 'VONAGE_API_SECRET'
        config.signature_secret  = 'VONAGE_API_SIGNATURE'
        config.application_id    = 'VONAGE_APPLICATION_ID'
        config.private_key       = ''
      end
    end

    it 'does not define a private key if one is not given' do
      client = described_class.client

      expect(client.config.private_key).to be_blank
    end
  end

  describe 'delegators' do
    it 'can access an Account object using the account method' do
      expect(described_class.account).to be_a(Vonage::Account)
    end

    it 'can access an Alerts object using the alerts method' do
      expect(described_class.alerts).to be_a(Vonage::Alerts)
    end

    it 'can access an Applications object using the applications method' do
      expect(described_class.applications).to be_a(Vonage::Applications)
    end

    it 'can access an Conversations object using the conversations method' do
      expect(described_class.conversations).to be_a(Vonage::Conversations)
    end

    it 'can access an Conversions object using the conversions method' do
      expect(described_class.conversions).to be_a(Vonage::Conversions)
    end

    it 'can access an Files object using the files method' do
      expect(described_class.files).to be_a(Vonage::Files)
    end

    it 'can access an Messages object using the messages method' do
      expect(described_class.messages).to be_a(Vonage::Messages)
    end

    it 'can access an Messaging object using the messaging method' do
      expect(described_class.messaging).to be_a(Vonage::Messaging)
    end

    it 'can access an Numbers object using the numbers method' do
      expect(described_class.numbers).to be_a(Vonage::Numbers)
    end

    it 'can access an NumberInsight object using the number_insight method' do
      expect(described_class.number_insight).to be_a(Vonage::NumberInsight)
    end

    it 'can access an NumberInsight2 object using the number_insight_2 method' do
      expect(described_class.number_insight_2).to be_a(Vonage::NumberInsight2)
    end

    it 'can access an PricingTypes object using the pricing method' do
      expect(described_class.pricing).to be_a(Vonage::PricingTypes)
    end

    it 'can access an Redact object using the redact method' do
      expect(described_class.redact).to be_a(Vonage::Redact)
    end

    it 'can access an Secrets object using the secrets method' do
      expect(described_class.secrets).to be_a(Vonage::Secrets)
    end

    it 'can access an Sms object using the sms method' do
      expect(described_class.sms).to be_a(Vonage::SMS)
    end

    it 'can access an Signature object using the signature method' do
      expect(described_class.signature).to be_a(Vonage::Signature)
    end

    it 'can access an Subaccounts object using the subaccounts method' do
      expect(described_class.subaccounts).to be_a(Vonage::Subaccounts)
    end

    it 'can access an TFA object using the tfa method' do
      expect(described_class.tfa).to be_a(Vonage::TFA)
    end

    it 'can access an Users object using the users method' do
      expect(described_class.users).to be_a(Vonage::Users)
    end

    it 'can access an Verify object using the verify method' do
      expect(described_class.verify).to be_a(Vonage::Verify)
    end

    it 'can access an Verify2 object using the verify2 method' do
      expect(described_class.verify2).to be_a(Vonage::Verify2)
    end

    it 'can access an Video object using the video method' do
      expect(described_class.video).to be_a(Vonage::Video)
    end

    it 'can access an Voice object using the voice method' do
      expect(described_class.voice).to be_a(Vonage::Voice)
    end
  end
end

