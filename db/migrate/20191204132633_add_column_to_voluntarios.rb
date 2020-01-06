class AddColumnToVoluntarios < ActiveRecord::Migration[5.2]
  def change
    add_column :voluntarios, :firstSession, :boolean, :default => true
  end
end
