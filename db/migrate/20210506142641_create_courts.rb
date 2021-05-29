class CreateCourts < ActiveRecord::Migration[5.0]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :type
      t.text :area
      t.string :image
      t.text :access
      t.string :opening_hour
      t.text :features
      t.integer :prefecture_id
      

      t.timestamps
    end
  end
end
