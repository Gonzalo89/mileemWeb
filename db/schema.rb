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

ActiveRecord::Schema.define(version: 20141030143512) do

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

  create_table "estados", force: true do |t|
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
    t.float    "latitude",            limit: 24
    t.float    "longitude",           limit: 24
    t.integer  "superficie_nc"
    t.integer  "user_id"
    t.integer  "tipo_publicacion_id"
    t.datetime "fecha_publicacion"
    t.datetime "fecha_finalizacion"
    t.integer  "estado_id"
    t.string   "nombre_titular"
    t.string   "apellido_titular"
    t.string   "numero_tarjeta"
    t.integer  "codigo_seguridad"
    t.datetime "vencimiento_tarjeta"
  end

  add_index "propiedads", ["barrio_id"], name: "index_propiedads_on_barrio_id", using: :btree
  add_index "propiedads", ["estado_id"], name: "index_propiedads_on_estado_id", using: :btree
  add_index "propiedads", ["moneda_id"], name: "index_propiedads_on_moneda_id", using: :btree
  add_index "propiedads", ["operacion_id"], name: "index_propiedads_on_operacion_id", using: :btree
  add_index "propiedads", ["tipo_propiedad_id"], name: "index_propiedads_on_tipo_propiedad_id", using: :btree
  add_index "propiedads", ["tipo_publicacion_id"], name: "index_propiedads_on_tipo_publicacion_id", using: :btree
  add_index "propiedads", ["user_id"], name: "index_propiedads_on_user_id", using: :btree

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

  create_table "tipo_publicacions", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "maxFotos"
    t.integer  "maxVideos"
    t.integer  "mesesDuracion"
    t.integer  "importe"
    t.integer  "importePromo"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vecinos", force: true do |t|
    t.integer  "vecino_id"
    t.integer  "barrio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "promedioM2"
    t.integer  "promedioM2Dolares"
    t.string   "vecino_nombre"
  end

  add_index "vecinos", ["barrio_id"], name: "index_vecinos_on_barrio_id", using: :btree

  create_table "videos", force: true do |t|
    t.string   "url"
    t.integer  "propiedad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["propiedad_id"], name: "index_videos_on_propiedad_id", using: :btree

end
