class AddPastDateToTable < ActiveRecord::Migration[6.0]
  def change
    add_column :vitals, :past_date, :datetime
  end
end
