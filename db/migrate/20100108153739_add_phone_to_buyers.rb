class AddPhoneToBuyers < ActiveRecord::Migration
  def self.up
    add_column :buyers, :phone, :string
  end

  def self.down
    remove_column :buyers, :phone
  end
end
