class AddAddressToBuyers < ActiveRecord::Migration
  def self.up
    add_column :buyers, :address, :string
  end

  def self.down
    remove_column :buyers, :address
  end
end
