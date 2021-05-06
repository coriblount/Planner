class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :completion_date 
      t.timestamps
    end
  end
end
