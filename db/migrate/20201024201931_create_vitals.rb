class CreateVitals < ActiveRecord::Migration[6.0]
  def change
    create_table :vitals do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.float :systolic
      t.float :diastolic
      t.integer :hr
      t.integer :oxygen
      t.integer :weight
      t.integer :temp

      t.timestamps
    end
  end
end
