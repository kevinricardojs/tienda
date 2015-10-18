# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151005220344) do

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre",              limit: 255
    t.text     "descripcion",         limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "imagen_file_name",    limit: 255
    t.string   "imagen_content_type", limit: 255
    t.integer  "imagen_file_size",    limit: 4
    t.datetime "imagen_updated_at"
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre",              limit: 255,   null: false
    t.string   "desc_c",              limit: 255,   null: false
    t.text     "desc_l",              limit: 65535, null: false
    t.string   "estado",              limit: 255,   null: false
    t.float    "precio",              limit: 24,    null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "usuario_id",          limit: 4
    t.integer  "departamento_id",     limit: 4
    t.string   "imagen_file_name",    limit: 255
    t.string   "imagen_content_type", limit: 255
    t.integer  "imagen_file_size",    limit: 4
    t.datetime "imagen_updated_at"
  end

  add_index "productos", ["departamento_id"], name: "index_productos_on_departamento_id", using: :btree
  add_index "productos", ["usuario_id"], name: "index_productos_on_usuario_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "tipo_de_usuario",        limit: 4,   default: 1
    t.string   "nombre",                 limit: 255, default: "",    null: false
    t.string   "user_name",              limit: 255,                 null: false
    t.boolean  "sexo",                               default: false
    t.string   "direccion",              limit: 255
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "productos", "departamentos"
  add_foreign_key "productos", "usuarios"
end
