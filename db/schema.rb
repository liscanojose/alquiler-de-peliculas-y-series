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

ActiveRecord::Schema.define(version: 20171223224438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string   "titulo"
    t.string   "genero"
    t.float    "duracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "novels", force: :cascade do |t|
    t.string   "titulo"
    t.string   "genero"
    t.integer  "temporada"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_movies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_movies", ["movie_id"], name: "index_user_movies_on_movie_id", using: :btree
  add_index "user_movies", ["user_id"], name: "index_user_movies_on_user_id", using: :btree

  create_table "user_novels", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "novel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_novels", ["novel_id"], name: "index_user_novels_on_novel_id", using: :btree
  add_index "user_novels", ["user_id"], name: "index_user_novels_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_movies", "movies"
  add_foreign_key "user_movies", "users"
  add_foreign_key "user_novels", "novels"
  add_foreign_key "user_novels", "users"
end
