class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :name
      t.time :time

      t.timestamps null: false
    end
  end
end
