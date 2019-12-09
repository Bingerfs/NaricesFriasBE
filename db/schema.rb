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

ActiveRecord::Schema.define(version: 2019_12_09_141643) do

  create_table "admins", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_admins_on_uid_and_provider", unique: true
  end

  create_table "adoptados", force: :cascade do |t|
    t.string "edad"
    t.string "tamagno"
    t.string "genero"
    t.boolean "esterilizacion"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "agradecimientos", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "apadrinados", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "buscados", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "age"
    t.boolean "esterilizacion"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "gender"
  end

  create_table "busco_mi_duenios", force: :cascade do |t|
    t.string "edad"
    t.string "tamanio"
    t.string "string"
    t.string "genero"
    t.string "raza"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendarios", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extraviados", force: :cascade do |t|
    t.string "size"
    t.string "age"
    t.string "gender"
    t.boolean "esterilizacion"
    t.integer "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
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

  create_table "voluntarios", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "telefono"
    t.index ["confirmation_token"], name: "index_voluntarios_on_confirmation_token", unique: true
    t.index ["email"], name: "index_voluntarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_voluntarios_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_voluntarios_on_uid_and_provider", unique: true
  end

end
