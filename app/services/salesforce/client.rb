# frozen_string_literal: true

module Salesforce
  class Client
    ENDPOINT = 'test.salesforce.com'

    attr_reader :client

    def initialize
      @client       = authenticate!
    end

    def get_all_accounts
      attrs = 'Id, E_Shop_Dealer__c, Name, POS_Street__c, POS_City__c,'\
              'POS_ZIP__c, POS_Country__c, POS_State__c, POS_Phone__c,' \
              'Dealer_Latitude__c, Dealer_Longitude__c, CreatedDate'
      client.query(
        "select #{attrs} from Account where E_Shop_Dealer__c = 'Dealer and Point of Sale'"
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