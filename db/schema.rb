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

ActiveRecord::Schema.define(version: 2018_08_01_022429) do

  create_table "acudientes", force: :cascade do |t|
    t.string "tipo_identificacion"
    t.string "identificacion"
    t.string "nombre"
    t.string "apellido"
    t.boolean "genero"
    t.string "email"
    t.date "fecha_n"
    t.string "tipo_sangre"
    t.string "direccion"
    t.string "barrio"
    t.string "telefono"
    t.string "celular"
    t.string "parentesco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "acudientes_alumnos", id: false, force: :cascade do |t|
    t.integer "alumno_id", null: false
    t.integer "acudiente_id", null: false
    t.index ["acudiente_id", "alumno_id"], name: "index_acudientes_alumnos_on_acudiente_id_and_alumno_id"
    t.index ["alumno_id", "acudiente_id"], name: "index_acudientes_alumnos_on_alumno_id_and_acudiente_id"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string "tipo_identificacion"
    t.string "identificacion"
    t.string "nombre"
    t.string "apellido"
    t.boolean "genero"
    t.string "email"
    t.date "fecha_n"
    t.string "tipo_sangre"
    t.string "direccion"
    t.string "barrio"
    t.string "telefono"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos_docentes", id: false, force: :cascade do |t|
    t.integer "docente_id", null: false
    t.integer "curso_id", null: false
    t.index ["curso_id", "docente_id"], name: "index_cursos_docentes_on_curso_id_and_docente_id"
    t.index ["docente_id", "curso_id"], name: "index_cursos_docentes_on_docente_id_and_curso_id"
  end

  create_table "cursos_materias", id: false, force: :cascade do |t|
    t.integer "materia_id", null: false
    t.integer "curso_id", null: false
    t.index ["curso_id", "materia_id"], name: "index_cursos_materias_on_curso_id_and_materia_id"
    t.index ["materia_id", "curso_id"], name: "index_cursos_materias_on_materia_id_and_curso_id"
  end

  create_table "docentes", force: :cascade do |t|
    t.string "tipo_identificacion"
    t.string "identificacion"
    t.string "nombre"
    t.string "apellido"
    t.boolean "genero"
    t.string "email"
    t.date "fecha_n"
    t.string "tipo_sangre"
    t.string "direccion"
    t.string "barrio"
    t.string "telefono"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "docentes_materias", id: false, force: :cascade do |t|
    t.integer "materia_id", null: false
    t.integer "docente_id", null: false
    t.index ["docente_id", "materia_id"], name: "index_docentes_materias_on_docente_id_and_materia_id"
    t.index ["materia_id", "docente_id"], name: "index_docentes_materias_on_materia_id_and_docente_id"
  end

  create_table "materias", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
