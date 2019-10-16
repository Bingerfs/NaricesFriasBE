class AddDescriptionToAdoptados < ActiveRecord::Migration[5.2]
  def change
    add_column :adoptados, :description, :text
  end
end
