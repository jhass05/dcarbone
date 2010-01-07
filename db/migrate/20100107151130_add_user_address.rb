class AddUserAddress < ActiveRecord::Migration
  def self.up
	add_column "users","user_address", :string, :limit => 50, :default => "", :null => false
  end

  def self.down
	remove_column "users","user_address"
  end
end
