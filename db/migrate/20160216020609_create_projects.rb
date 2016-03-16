class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.boolean :complete
      t.date :deadline

      t.timestamps null: false
    end
  end
end
