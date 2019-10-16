class ChangeAgeToBeStringInAdoptados < ActiveRecord::Migration[5.2]
  def up
    change_column :adoptados, :edad, :string
  end
  
  def down
    change_column :adoptados, :edad, :integer
  end

end
