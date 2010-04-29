class AddUserName < ActiveRecord::Migration
  def self.up
	add_column "users","user_name", :string, :limit => 50, :default => "", :null => false
  end

  def self.down
	remove_columnn "users","user_name"
  end
end
