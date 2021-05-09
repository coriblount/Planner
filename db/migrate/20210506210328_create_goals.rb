class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :start
      t.integer :completion
      t.integer :user_id
      t.timestamps
    end
  end
end
