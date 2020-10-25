class AddTempBackToTable < ActiveRecord::Migration[6.0]
  def change
    add_column :vitals, :temp, :float
  end
end
