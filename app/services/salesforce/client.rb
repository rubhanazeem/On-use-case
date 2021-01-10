# frozen_string_literal: true

module Salesforce
  class Client
    ENDPOINT = 'test.salesforce.com'
    DEALER_IDENTIFIER = 'Dealer and Point of Sale'
    ATTRS    = %w[Id E_Shop_Dealer__c Name POS_Street__c POS_City__c
                  POS_ZIP__c POS_Country__c POS_State__c POS_Phone__c
                  Dealer_Latitude__c Dealer_Longitude__c
    ]

    attr_reader :client

    def initialize
      @client = authenticate!
    end

    def get_all_accounts
      client.query(
        "select #{ATTRS.join(',')} from Account where E_Shop_Dealer__c = '#{DEALER_IDENTIFIER}'"
      )
    end

    private

    def authenticate!
      Restforce.new(
        host: ENDPOINT,
        username: ENV['SF_USERNAME'],
        password: ENV['SF_PASSWORD'],
        client_id: ENV['SF_CLIENT_ID'],
        client_secret: ENV['SF_CLIENT_SECRET']
      ).tap(&:authenticate!)
    end
  end
end