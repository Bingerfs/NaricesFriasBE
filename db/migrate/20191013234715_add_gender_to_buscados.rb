class AddGenderToBuscados < ActiveRecord::Migration[5.2]
  def change
    add_column :buscados, :gender, :string
  end
end
