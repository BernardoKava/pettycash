class AddOutflowtypeToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :outflowtype_id, :integer
  end
end
