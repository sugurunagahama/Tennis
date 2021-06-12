class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :password_digest
      t.string :court_name
      t.string :time
      t.string :number
      
      
      t.timestamps
    end
  end
end
