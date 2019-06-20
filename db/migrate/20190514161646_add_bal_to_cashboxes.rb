class AddBalToCashboxes < ActiveRecord::Migration[5.2]
  def change
    add_column :cashboxes, :balance, :numeric
  end
end
