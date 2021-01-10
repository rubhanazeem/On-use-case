class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :Id
      t.string :E_Shop_Dealer__c
      t.string :Name
      t.string :POS_Street__c
      t.string :POS_City__c
      t.string :POS_ZIP__c
      t.string :POS_Country__c
      t.string :POS_State__c
      t.string :POS_Phone__c
      t.float :Dealer_Latitude__c
      t.float :Dealer_Longitude__c

      t.timestamps
    end
    add_index :accounts, :Id
  end
end
