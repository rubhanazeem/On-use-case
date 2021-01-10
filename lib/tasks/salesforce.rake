# frozen_string_literal: true

namespace :salesforce do
  desc 'Import all retailers from Salesforce'
  task :import_all_retailers => [ :environment ] do
    client = Salesforce::Client.new
    accounts = client.get_all_accounts
    Retailer.create!(accounts.map{ |a| a.attrs })
  end

  desc 'Sync retailers with SF'
  task :sync_retailers => [ :environment ] do
    # remove deleted accounts
    client = Salesforce::Client.new.client
    end_time = Time.now
    start_time = end_time - 1.hour
    accounts = client.get_deleted('Account', start_time, end_time)
    Retailer.where(Id: accounts.deletedRecords).destroy_all

    # add new accounts
    updated_accounts = []
    ids = client.get_updated('Account', start_time, end_time).ids
    ids = ids - Retailer.pluck(:Id)
    ids.each do |id|
      account = client.select('Account', id, Salesforce::Client::ATTRS)
      retailer = account.E_Shop_Dealer__c == Salesforce::Client::DEALER_IDENTIFIER
      updated_accounts << account.attrs if retailer
    end
    Retailer.create!(updated_accounts) if updated_accounts.present?
  end
end
