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

ActiveRecord::Schema.define(version: 20140909112742) do

  create_table "barrios", force: true do |t|
    t.string   "nombre"
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
  end

  add_index "propiedads", ["barrio_id"], name: "index_propiedads_on_barrio_id", using: :btree
  add_index "propiedads", ["tipo_propiedad_id"], name: "index_propiedads_on_tipo_propiedad_id", using: :btree

  create_table "tipo_propiedads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
