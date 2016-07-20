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

ActiveRecord::Schema.define(version: 20160720204445) do

  create_table "categorias", force: :cascade do |t|
    t.integer  "menu_id",    limit: 4
    t.integer  "empresa_id", limit: 4
    t.string   "nombre",     limit: 255
    t.boolean  "estado"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "categorias", ["empresa_id"], name: "categorias_empresa_id_fk", using: :btree
  add_index "categorias", ["menu_id"], name: "categorias_menu_id_fk", using: :btree
  add_index "categorias", ["nombre"], name: "index_categorias_on_nombre", unique: true, using: :btree

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre",         limit: 255
    t.string   "apellido",       limit: 255
    t.string   "nombre_usuario", limit: 255
    t.string   "documento",      limit: 255
    t.string   "email",          limit: 255
    t.string   "telefono",       limit: 255
    t.string   "celular",        limit: 255
    t.string   "direccion",      limit: 255
    t.string   "pais",           limit: 255
    t.string   "ciudad",         limit: 255
    t.string   "departamento",   limit: 255
    t.integer  "usuario_id",     limit: 4
    t.boolean  "estado"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "clientes", ["documento"], name: "index_clientes_on_documento", unique: true, using: :btree
  add_index "clientes", ["usuario_id"], name: "clientes_usuario_id_fk", using: :btree

  create_table "detalle_pedidos", force: :cascade do |t|
    t.integer  "pedido_id",   limit: 4
    t.integer  "empresa_id",  limit: 4
    t.integer  "plato_id",    limit: 4
    t.integer  "cantidad",    limit: 4
    t.integer  "costo_plato", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "detalle_pedidos", ["empresa_id"], name: "detalle_pedidos_empresa_id_fk", using: :btree
  add_index "detalle_pedidos", ["pedido_id"], name: "detalle_pedidos_pedido_id_fk", using: :btree
  add_index "detalle_pedidos", ["plato_id"], name: "detalle_pedidos_plato_id_fk", using: :btree

  create_table "empresas", force: :cascade do |t|
    t.string   "razonsocial",  limit: 255
    t.string   "nombrecorto",  limit: 255
    t.string   "ruc",          limit: 255
    t.string   "pais",         limit: 255
    t.string   "ciudad",       limit: 255
    t.string   "departamento", limit: 255
    t.string   "direccion",    limit: 255
    t.string   "email",        limit: 255
    t.string   "telefono",     limit: 255
    t.string   "web",          limit: 255
    t.boolean  "estado"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "empresas", ["razonsocial"], name: "index_empresas_on_razonsocial", unique: true, using: :btree

  create_table "ingrediente_platos", force: :cascade do |t|
    t.integer  "ingrediente_id", limit: 4
    t.integer  "plato_id",       limit: 4
    t.integer  "cantidad",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "ingrediente_platos", ["ingrediente_id"], name: "ingrediente_platos_ingrediente_id_fk", using: :btree
  add_index "ingrediente_platos", ["plato_id"], name: "ingrediente_platos_plato_id_fk", using: :btree

  create_table "ingredientes", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.boolean  "estado"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ingredientes", ["nombre"], name: "index_ingredientes_on_nombre", unique: true, using: :btree

  create_table "menus", force: :cascade do |t|
    t.integer  "empresa_id", limit: 4
    t.string   "nombre",     limit: 255
    t.boolean  "estado"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "menus", ["empresa_id"], name: "menus_empresa_id_fk", using: :btree
  add_index "menus", ["nombre"], name: "index_menus_on_nombre", unique: true, using: :btree

  create_table "pedidos", force: :cascade do |t|
    t.integer  "empresa_id",            limit: 4
    t.integer  "orden_numero",          limit: 4
    t.integer  "cliente_id",            limit: 4
    t.string   "fecha_pedido",          limit: 255
    t.string   "direccion",             limit: 255
    t.integer  "monto_total",           limit: 4
    t.time     "tiempo_estimado_envio"
    t.boolean  "recepcionado"
    t.boolean  "enviado"
    t.boolean  "entregado"
    t.integer  "usuario_id",            limit: 4
    t.integer  "repartidor_id",         limit: 4
    t.boolean  "estado"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "pedidos", ["cliente_id"], name: "pedidos_cliente_id_fk", using: :btree
  add_index "pedidos", ["empresa_id"], name: "pedidos_empresa_id_fk", using: :btree
  add_index "pedidos", ["orden_numero"], name: "index_pedidos_on_orden_numero", unique: true, using: :btree
  add_index "pedidos", ["repartidor_id"], name: "pedidos_repartidor_id_fk", using: :btree
  add_index "pedidos", ["usuario_id"], name: "pedidos_usuario_id_fk", using: :btree

  create_table "plato_categorias", force: :cascade do |t|
    t.integer  "plato_id",     limit: 4
    t.integer  "categoria_id", limit: 4
    t.integer  "menu_id",      limit: 4
    t.integer  "empresa_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "plato_categorias", ["categoria_id"], name: "plato_categorias_categoria_id_fk", using: :btree
  add_index "plato_categorias", ["empresa_id"], name: "plato_categorias_empresa_id_fk", using: :btree
  add_index "plato_categorias", ["menu_id"], name: "plato_categorias_menu_id_fk", using: :btree
  add_index "plato_categorias", ["plato_id"], name: "plato_categorias_plato_id_fk", using: :btree

  create_table "platos", force: :cascade do |t|
    t.string   "nombre",             limit: 255
    t.string   "img",                limit: 255
    t.time     "tiempo_preparacion"
    t.boolean  "estado"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "platos", ["nombre"], name: "index_platos_on_nombre", unique: true, using: :btree

  create_table "repartidors", force: :cascade do |t|
    t.string   "nombre",      limit: 255
    t.string   "apellido",    limit: 255
    t.string   "telefono",    limit: 255
    t.string   "zona",        limit: 255
    t.boolean  "en_servicio"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

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

