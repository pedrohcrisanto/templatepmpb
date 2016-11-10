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

ActiveRecord::Schema.define(version: 20161110124942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acessorio_rpas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cor"
    t.text     "descricao"
    t.integer  "id_usuario"
    t.integer  "id_acessorio"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "acessorios_rpas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cor"
    t.text     "descricao"
    t.integer  "id_usuario"
    t.string   "id_acessorio_intege"
    t.integer  "serial_num_bateria"
    t.string   "serial_sigla_bateria"
    t.string   "compativel_aeronave_bateria"
    t.string   "modelo_bateria"
    t.string   "material_bateria"
    t.string   "carga_bateria"
    t.string   "potencia_bateria"
    t.string   "tensao_bateria"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "cadastro_equipe_rpas", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo_licenca_certificado"
    t.integer  "numero_licenca_certificado"
    t.binary   "anexar_copia"
    t.text     "experiencia_pilito_observador"
    t.integer  "id_usuario"
    t.integer  "id_erpa"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "cadastro_pilotos", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo_licenca_certificado"
    t.binary   "anexar_copia"
    t.text     "experiencia_piloto_observador"
    t.integer  "id_usuario"
    t.integer  "id_erpa"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "cadastro_plano_de_voos", force: :cascade do |t|
    t.text     "objetivos"
    t.string   "frequencia_voo"
    t.string   "duracao_voo"
    t.string   "numero_estacoes"
    t.text     "localizacao_estacoes"
    t.string   "transferencia"
    t.text     "local_decolagem"
    t.text     "requisitos_decolagem"
    t.text     "requisitos_pouso"
    t.text     "rota"
    t.text     "carga_util"
    t.text     "altura_maxima"
    t.string   "local_destino"
    t.datetime "data_voo"
    t.text     "codigo_chamada"
    t.text     "regras_voo"
    t.string   "tipo_operacao"
    t.string   "id_operador"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "cadastro_rpas", force: :cascade do |t|
    t.string   "fabrica"
    t.string   "modelo"
    t.string   "propulsao"
    t.string   "serial"
    t.text     "descricao_material"
    t.integer  "numero_certificado_requerente"
    t.integer  "tipo_certificado_requerente"
    t.binary   "anexar_certificado_requerente"
    t.string   "pais_registro_rpa"
    t.string   "matricula_rpa"
    t.binary   "anexo_copia_certificado_rpa"
    t.binary   "anexo_copia_matricula_rpa"
    t.integer  "num_certificado_estacao"
    t.string   "tipo_certificado_estacao"
    t.binary   "anexar_licensa_estacao"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "military_ranks", force: :cascade do |t|
    t.string   "name",         default: "", null: false
    t.string   "abbreviation", default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name"], name: "index_military_ranks_on_name", unique: true, using: :btree
  end

  create_table "permission_roles", force: :cascade do |t|
    t.integer "permission_id"
    t.integer "role_id"
    t.index ["permission_id"], name: "index_permission_roles_on_permission_id", using: :btree
    t.index ["role_id"], name: "index_permission_roles_on_role_id", using: :btree
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "placements", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "unit_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_placements_on_unit_id", using: :btree
    t.index ["user_id"], name: "index_placements_on_user_id", using: :btree
  end

  create_table "plano_de_voos", force: :cascade do |t|
    t.text     "objetivo_operacao"
    t.string   "codigo_chamdarpa"
    t.datetime "data_voo"
    t.string   "duracao_frequencia_voo"
    t.text     "regra_voo"
    t.string   "tipo_operacao"
    t.string   "numero_estacao"
    t.string   "localizao_estacao"
    t.text     "procedimento_transferencia"
    t.string   "local_decolagem"
    t.string   "local_destino"
    t.text     "requisitos_decolagem"
    t.text     "requisitos_pouso"
    t.text     "rota"
    t.integer  "altura_voo"
    t.text     "comunicacao_ats"
    t.text     "enlace_pilotagem"
    t.text     "comunicacao_piloto_observador"
    t.integer  "id_usuario"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "relatorio_plano_de_voos", force: :cascade do |t|
    t.string   "condições_relevantes"
    t.string   "discrep_obser_missao"
    t.string   "discrep_anteriores_missao"
    t.string   "conclusao"
    t.integer  "id_pdv"
    t.integer  "id_relatorio_voo"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "name",       default: "", null: false
    t.string   "address",    default: "", null: false
    t.string   "zip_code",   default: "", null: false
    t.integer  "parent_id"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["parent_id"], name: "index_units_on_parent_id", using: :btree
  end

  create_table "user_permissions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "permission_id"
    t.index ["permission_id"], name: "index_user_permissions_on_permission_id", using: :btree
    t.index ["user_id"], name: "index_user_permissions_on_user_id", using: :btree
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id", using: :btree
    t.index ["user_id"], name: "index_user_roles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "first_name",             default: "",    null: false
    t.string   "last_name",              default: "",    null: false
    t.boolean  "military",               default: true,  null: false
    t.boolean  "inactive",               default: false, null: false
    t.string   "pants_size"
    t.string   "beret_size"
    t.string   "t_shirt_size"
    t.string   "boot_size"
    t.date     "birth_date",                             null: false
    t.date     "admission_date"
    t.string   "registration",                           null: false
    t.string   "cpf",                                    null: false
    t.string   "home_phone"
    t.string   "mobile_phone",                           null: false
    t.string   "address"
    t.string   "complement"
    t.string   "neighborhood"
    t.boolean  "active",                 default: true
    t.string   "state"
    t.integer  "military_rank_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "unit_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["military_rank_id"], name: "index_users_on_military_rank_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unit_id"], name: "index_users_on_unit_id", using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

  add_foreign_key "permission_roles", "permissions"
  add_foreign_key "permission_roles", "roles"
  add_foreign_key "placements", "units"
  add_foreign_key "placements", "users"
  add_foreign_key "user_permissions", "permissions"
  add_foreign_key "user_permissions", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "users", "military_ranks"
  add_foreign_key "users", "units"
end
