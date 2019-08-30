# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_30_064444) do

  create_table "adoptados", force: :cascade do |t|
    t.integer "edad"
    t.string "tamagno"
    t.string "genero"
    t.boolean "esterilizacion"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historial_adoptados", force: :cascade do |t|
    t.string "nombreDuegno"
    t.string "telefonoDuegno"
    t.string "direccionDuegno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "adoptado_id"
    t.index ["adoptado_id"], name: "index_historial_adoptados_on_adoptado_id"
  end

end
