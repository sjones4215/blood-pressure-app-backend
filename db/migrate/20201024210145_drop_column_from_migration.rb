class DropColumnFromMigration < ActiveRecord::Migration[6.0]
  def change
    remove_column :vitals, :temp
  end
end
