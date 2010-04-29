class CreateInsumos < ActiveRecord::Migration
  def self.up
    create_table :insumos do |t|
      t.string :name
      t.integer :quantity
      t.float :price
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :insumos
  end
end
