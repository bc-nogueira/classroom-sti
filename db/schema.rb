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

ActiveRecord::Schema.define(version: 2018_10_31_033125) do

  create_table "aluno_turmas", force: :cascade do |t|
    t.integer "aluno_id"
    t.integer "turma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_aluno_turmas_on_aluno_id"
    t.index ["turma_id"], name: "index_aluno_turmas_on_turma_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "iduff"
    t.string "matricula"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "codigo"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professores", force: :cascade do |t|
    t.string "nome"
    t.string "iduff"
    t.string "siape"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string "codigo"
    t.string "periodo"
    t.integer "disciplina_id"
    t.integer "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_turmas_on_disciplina_id"
    t.index ["professor_id"], name: "index_turmas_on_professor_id"
  end

end
