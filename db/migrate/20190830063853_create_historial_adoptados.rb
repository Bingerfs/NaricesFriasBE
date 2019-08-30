class CreateHistorialAdoptados < ActiveRecord::Migration[5.2]
  def change
    create_table :historial_adoptados do |t|
      t.string :nombreDuegno
      t.string :telefonoDuegno
      t.string :direccionDuegno

      t.timestamps
    end
  end
end
