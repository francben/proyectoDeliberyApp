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

ActiveRecord::Schema.define(version: 20160417155924) do

  create_table "roles", force: :cascade do |t|
    t.string   "nombre_rol",      limit: 255
    t.string   "descripcion_rol", limit: 255
    t.integer  "estado_rol",      limit: 4,   default: 1
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "roles", ["nombre_rol"], name: "index_roles_on_nombre_rol", unique: true, using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.integer  "rol_id",                 limit: 4
    t.string   "nick_usuario",           limit: 255
    t.string   "nombre_usuario",         limit: 255
    t.string   "apellido_usuario",       limit: 255
    t.string   "documento_usuario",      limit: 255
    t.integer  "estado_usuario",         limit: 4,   default: 1
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "usuarios", ["documento_usuario"], name: "index_usuarios_on_documento_usuario", unique: true, using: :btree
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["nick_usuario"], name: "index_usuarios_on_nick_usuario", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  add_index "usuarios", ["rol_id"], name: "usuarios_rol_id_fk", using: :btree

