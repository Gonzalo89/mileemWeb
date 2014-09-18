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

ActiveRecord::Schema.define(version: 20140917174522) do

  create_table "amenities", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barrios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", force: true do |t|
    t.string   "nombre"
    t.integer  "propiedad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fotos", ["propiedad_id"], name: "index_fotos_on_propiedad_id", using: :btree

  create_table "monedas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operacions", force: true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "propiedads", force: true do |t|
    t.string   "direccion"
    t.integer  "barrio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "precio"
    t.integer  "superficie"
    t.integer  "ambientes"
    t.integer  "tipo_propiedad_id"
    t.string   "foto"
    t.integer  "moneda_id"
    t.string   "piso"
    t.integer  "numero"
    t.string   "departamento"
    t.text     "descripcion"
    t.integer  "operacion_id"
    t.integer  "antiguedad"
    t.integer  "dormitorios"
    t.integer  "expensas"
    t.integer  "superficie_nc"
    t.float    "latitude",          limit: 24
    t.float    "longitude",         limit: 24
  end

  add_index "propiedads", ["barrio_id"], name: "index_propiedads_on_barrio_id", using: :btree
  add_index "propiedads", ["moneda_id"], name: "index_propiedads_on_moneda_id", using: :btree
  add_index "propiedads", ["operacion_id"], name: "index_propiedads_on_operacion_id", using: :btree
  add_index "propiedads", ["tipo_propiedad_id"], name: "index_propiedads_on_tipo_propiedad_id", using: :btree

  create_table "tieneamenities", force: true do |t|
    t.integer  "propiedad_id"
    t.integer  "amenity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tieneamenities", ["amenity_id"], name: "index_tieneamenities_on_amenity_id", using: :btree
  add_index "tieneamenities", ["propiedad_id"], name: "index_tieneamenities_on_propiedad_id", using: :btree

  create_table "tipo_propiedads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
