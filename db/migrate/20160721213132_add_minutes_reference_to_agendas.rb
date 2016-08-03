class AddMinutesReferenceToAgendas < ActiveRecord::Migration
  def change
      add_reference :agendas, :minute, index: true
  end
end
