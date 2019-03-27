{"changed":true,"filter":false,"title":"schema.rb","tooltip":"/db/schema.rb","value":"# encoding: UTF-8\n# This file is auto-generated from the current state of the database. Instead\n# of editing this file, please use the migrations feature of Active Record to\n# incrementally modify your database, and then regenerate this schema definition.\n#\n# Note that this schema.rb definition is the authoritative source for your\n# database schema. If you need to create the application database on another\n# system, you should be using db:schema:load, not running all the migrations\n# from scratch. The latter is a flawed and unsustainable approach (the more migrations\n# you'll amass, the slower it'll run and the greater likelihood for issues).\n#\n# It's strongly recommended that you check this file into your version control system.\n\nActiveRecord::Schema.define(version: 20170817115522) do\n\n  create_table \"results\", force: :cascade do |t|\n    t.string   \"university\"\n    t.string   \"subject\"\n    t.string   \"close\"\n    t.string   \"first_result\"\n    t.string   \"interview\"\n    t.string   \"finale_rusult\"\n    t.string   \"x_point\"\n    t.string   \"y_point\"\n    t.datetime \"created_at\",    null: false\n    t.datetime \"updated_at\",    null: false\n  end\n\n  create_table \"subjects\", force: :cascade do |t|\n    t.datetime \"created_at\", null: false\n    t.datetime \"updated_at\", null: false\n  end\n\n  create_table \"tables\", force: :cascade do |t|\n    t.string   \"university\"\n    t.string   \"x_point\"\n    t.string   \"y_point\"\n    t.datetime \"created_at\", null: false\n    t.datetime \"updated_at\", null: false\n  end\n\n  create_table \"universities\", force: :cascade do |t|\n    t.datetime \"created_at\", null: false\n    t.datetime \"updated_at\", null: false\n  end\n\nend\n","undoManager":{"mark":-2,"position":1,"stack":[[{"start":{"row":28,"column":2},"end":{"row":28,"column":4},"action":"insert","lines":["# "],"id":2},{"start":{"row":29,"column":2},"end":{"row":29,"column":4},"action":"insert","lines":["# "]},{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"insert","lines":["# "]},{"start":{"row":31,"column":2},"end":{"row":31,"column":4},"action":"insert","lines":["# "]}],[{"start":{"row":28,"column":2},"end":{"row":28,"column":4},"action":"remove","lines":["# "],"id":3},{"start":{"row":29,"column":2},"end":{"row":29,"column":4},"action":"remove","lines":["# "]},{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"remove","lines":["# "]},{"start":{"row":31,"column":2},"end":{"row":31,"column":4},"action":"remove","lines":["# "]}]]},"ace":{"folds":[],"scrolltop":120,"scrollleft":0,"selection":{"start":{"row":26,"column":5},"end":{"row":26,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1503058289218}