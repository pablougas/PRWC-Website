class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.date :deadline
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
