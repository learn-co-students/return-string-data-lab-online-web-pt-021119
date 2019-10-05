class MakeNullInventoryZero < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:products, :inventory, 0)
  end
end
