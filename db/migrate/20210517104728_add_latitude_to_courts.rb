class AddLatitudeToCourts < ActiveRecord::Migration[5.1]
  def change
    add_column :courts, :latitude, :float
  end
end
