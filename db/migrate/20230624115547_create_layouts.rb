class CreateLayouts < ActiveRecord::Migration[6.1]
  def change
    create_table :layouts do |t|
      t.string :content
      t.timestamps
    end
  end
end
