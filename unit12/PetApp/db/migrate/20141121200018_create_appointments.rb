class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :petname
      t.string :owner
      t.string :petwalker
      t.date :apptdate
      t.integer :apptlength

      t.timestamps
    end
  end
end
