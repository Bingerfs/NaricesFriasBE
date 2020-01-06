class ChangeContactToBeStringInBuscados < ActiveRecord::Migration[5.2]
  def up
    change_column :buscados, :contact, :string
  end
  
  def down
    change_column :buscados, :contact, :integer
  end
end
