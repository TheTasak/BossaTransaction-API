class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :name, null: false
      t.string :t_type, null: false
      t.integer :amount
      t.decimal :price, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
