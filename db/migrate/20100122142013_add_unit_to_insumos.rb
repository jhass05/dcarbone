class AddUnitToInsumos < ActiveRecord::Migration
  def self.up
    add_column :insumos, :unit, :string
  end

  def self.down
    remove_column :insumos, :unit
  end
end
