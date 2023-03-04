class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :name, null: false
      t.string :details
      t.decimal :price
      t.date :date, null: false
      t.timestamps
    end
  end
end
