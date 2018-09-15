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

ActiveRecord::Schema.define(version: 20180913080625) do

  create_table "parkings", force: :cascade do |t|
    t.integer "id_usuario"
    t.integer "id_ubicacion"
    t.integer "id_servicio_adicional"
    t.string "nombre"
    t.string "direccion"
    t.float "precio"
    t.integer "telefono"
    t.integer "id_tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_imagen"
  end

  create_table "rents", force: :cascade do |t|
    t.integer "id_estacionamiento"
    t.integer "id_usuario"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.integer "id_servicio_adicional"
    t.text "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer "id_estacionamiento"
    t.integer "tipo_servicio"
    t.text "descripcion"
    t.float "tarifa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubications", force: :cascade do |t|
    t.integer "id_estacionamiento"
    t.string "cod_departamento"
    t.string "cod_provincia"
    t.string "cod_distrito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido1"
    t.string "apellido2"
    t.integer "id_tipo_documento"
    t.integer "numero_documento"
    t.integer "id_tipo_usuario"
    t.string "telefono"
    t.string "correo1"
    t.string "correo2"
    t.string "contraseña1"
    t.string "contraseña2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
