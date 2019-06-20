class AddNotesToCashboxes < ActiveRecord::Migration[5.2]
  def change
    add_column :cashboxes, :notes, :text
  end
end
