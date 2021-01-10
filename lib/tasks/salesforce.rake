# frozen_string_literal: true

namespace :salesforce do
  desc 'Import all accounts from Salesforce'
  task :import_all_accounts => [ :environment ] do
    client = Salesforce::Client.new
    accounts = client.get_all_accounts
    Account.create!(accounts.map{ |a| a.attrs })
  end

  desc 'Sync accounts with SF'
  task :sync_accounts => [ :environment ] do
    # remove deleted accounts
    client = Salesforce::Client.new.client
    end_time = Time.now
    start_time = end_time - 1.hour
    accounts = client.get_deleted('Account', start_time, end_time)
    Account.where(Id: accounts.deletedRecords).destroy_all

    # add new accounts
    updated_accounts = []
    ids = client.get_updated('Account', start_time, end_time).ids
    ids = ids - Account.pluck(:Id)
    ids.each do |id|
      account = client.select('Account', id, Salesforce::Client::ATTRS)
      retailer = account.E_Shop_Dealer__c == 'Dealer and Point of Sale'
      updated_accounts << account.attrs if retailer
    end
    Account.create!(updated_accounts) if updated_accounts.present?
  end
end
