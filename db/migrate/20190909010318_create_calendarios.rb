class CreateCalendarios < ActiveRecord::Migration[5.2]
  def change
    create_table :calendarios do |t|
      t.string :titulo
      t.text :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
