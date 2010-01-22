class AddCodeToInsumos < ActiveRecord::Migration
  def self.up
    add_column :insumos, :code, :string
  end

  def self.down
    remove_column :insumos, :code
  end
end
