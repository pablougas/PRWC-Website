class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :task, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
