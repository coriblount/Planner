class CreateFinanceItems < ActiveRecord::Migration[6.1]
  def change
    create_table :finance_items do |t|
      t.string :name
      t.integer :amount
      t.string  :month
      t.timestamps
    end
  end
end
