class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.string :product
      t.float :price
      t.date :date_sale

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
