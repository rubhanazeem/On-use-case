class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :sf_id
      t.string :shop_dealer
      t.string :name
      t.string :street
      t.string :city
      t.string :zip
      t.string :country
      t.string :state
      t.string :phone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
