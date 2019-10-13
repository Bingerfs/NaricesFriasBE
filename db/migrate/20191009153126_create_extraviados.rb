class CreateExtraviados < ActiveRecord::Migration[5.2]
  def change
    create_table :extraviados do |t|
      t.string :size
      t.string :age
      t.string :gender
      t.boolean :esterilizacion
      t.integer :contact

      t.timestamps
    end
  end
end
