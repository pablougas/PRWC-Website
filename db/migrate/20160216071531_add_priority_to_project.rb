class AddPriorityToProject < ActiveRecord::Migration
  def change
    add_column :projects, :priority, :string
  end
end
