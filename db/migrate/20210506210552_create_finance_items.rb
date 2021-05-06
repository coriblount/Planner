class CreateFinanceItems < ActiveRecord::Migration[6.1]
  def change
    create_table :finance_items do |t|

      t.timestamps
    end
  end
end
