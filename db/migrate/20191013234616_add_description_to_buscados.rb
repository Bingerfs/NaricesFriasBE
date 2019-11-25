class AddDescriptionToBuscados < ActiveRecord::Migration[5.2]
  def change
    add_column :buscados, :description, :text
  end
end
