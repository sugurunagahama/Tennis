class AddAddressToCourts < ActiveRecord::Migration[5.1]
  def change
    add_column :courts, :address, :string
  end
end
