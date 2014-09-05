class AddSpecificAddressColumns < ActiveRecord::Migration
  def change
  	add_column :clients, :address_1, :string
  	add_column :clients, :address_2, :string
  	add_column :clients, :address_3, :string
  	add_column :clients, :city, :string
  	add_column :clients, :county, :string
  	add_column :clients, :postcode, :string
  end
end
