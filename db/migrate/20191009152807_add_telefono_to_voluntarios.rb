class AddTelefonoToVoluntarios < ActiveRecord::Migration[5.2]
  def change
    add_column :voluntarios, :telefono, :string
  end
end
