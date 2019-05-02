class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.date :t_date
      t.string :details
      t.numeric :amount
      t.text :rationale
      t.text :note
      t.integer :cashbox_id
      t.integer :person_id
      t.integer :cashflow_id

      t.timestamps
    end
  end
end
