class CreateBuscados < ActiveRecord::Migration[5.2]
  def change
    create_table :buscados do |t|
      t.string :name
      t.string :size
      t.string :age
      t.boolean :esterilizacion
      t.integer :contact

      t.timestamps
    end
  end
end
