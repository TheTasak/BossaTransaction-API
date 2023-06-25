class AddUserIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_reference :transactions, :user, foreign_key: true
  end
end
