class AddDateIngressToInsumos < ActiveRecord::Migration
  def self.up
    add_column :insumos, :date_ingress, :datetime
  end

  def self.down
    remove_column :insumos, :date_ingress
  end
end
