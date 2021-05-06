class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.datetime :date
      t.datetime :time
      t.timestamps
    end
  end
end
