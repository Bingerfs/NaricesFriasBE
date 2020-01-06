class AddReferenceToHistorial < ActiveRecord::Migration[5.2]
  def change
    add_reference :historial_adoptados, :adoptado, foreign_key: true
  end
end
