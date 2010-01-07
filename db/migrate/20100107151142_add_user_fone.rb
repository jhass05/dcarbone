class AddUserFone < ActiveRecord::Migration
  def self.up
	add_column "users","user_fone", :integer, :default => 0, :null => false
  end

  def self.down
	remove_column "users","user_fone"
  end
end
