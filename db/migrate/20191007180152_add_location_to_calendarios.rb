class AddLocationToCalendarios < ActiveRecord::Migration[5.2]
  def change
    add_column :calendarios, :lugar, :string
    add_column :calendarios, :hora, :time
  end
end
