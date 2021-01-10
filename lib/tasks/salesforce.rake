# frozen_string_literal: true

namespace :salesforce do
  desc 'Import all accounts from Salesforce'
  task :import_all_accounts do
    client = Salesforce::Client.new
    accounts = client.get_all_accounts
    Account.create!(accounts.map{ |a| a.attrs })
  end

  desc 'Sync accounts with SF'
  task :sync_accounts do
    client = Salesforce::Client.new.client
    end_time = Time.now
    start_time = end_time - 1.hour
    accounts = client.get_deleted('Account', start_time, end_time)
    Account.where(Id: accounts.deletedRecords).destroy_all

    updated_accounts = []
    ids = client.get_updated('Account', start_time, end_time).ids
    ids = ids - Account.pluck(:Id)
    ids.each do |id|
      account = client.find('Account', id)
      retailer = account.E_Shop_Dealer__c == 'Dealer and Point of Sale'
      updated_accounts << account.attrs if retailer
    end
    Account.create(updated_accounts) if updated_accounts.present?
  end
end