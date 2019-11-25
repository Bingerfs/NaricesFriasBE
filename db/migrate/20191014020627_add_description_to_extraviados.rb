class AddDescriptionToExtraviados < ActiveRecord::Migration[5.2]
  def change
    add_column :extraviados, :description, :string
  end
end
