class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :notes, :content, :note
  end
end
