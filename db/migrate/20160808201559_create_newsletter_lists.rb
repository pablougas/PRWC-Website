class CreateNewsletterLists < ActiveRecord::Migration
  def change
    create_table :newsletter_lists do |t|
      t.string :name
      t.string :email
      t.boolean :added

      t.timestamps null: false
    end
  end
end
