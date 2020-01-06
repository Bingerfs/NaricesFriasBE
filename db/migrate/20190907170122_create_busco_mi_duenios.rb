class CreateBuscoMiDuenios < ActiveRecord::Migration[5.2]
  def change
    create_table :busco_mi_duenios do |t|
      t.string :edad
      t.string :tamanio
      t.string :string
      t.string :genero
      t.string :raza
      t.string :telefono

      t.timestamps
    end
  end
end
