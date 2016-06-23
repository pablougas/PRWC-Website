class CreateMinutes < ActiveRecord::Migration
  def change
    create_table :minutes do |t|
      t.string :title
      t.string :location
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.datetime :date

      t.timestamps null: false
    end
  end
end
