class CreateCashboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :cashboxes do |t|
      t.string :name
      t.date :accounting_date
      t.boolean :active
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
