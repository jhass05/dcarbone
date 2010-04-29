class RemoveDateSaleFromSales < ActiveRecord::Migration
  def self.up
    remove_column :sales, :date_sale
  end

  def self.down
    add_column :sales, :date_sale, :date
  end
end
