class CreateAdoptados < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptados do |t|
      t.integer :edad
      t.string :tamagno
      t.string :genero
      t.boolean :esterilizacion
      t.string :telefono

      t.timestamps
    end
  end
end
