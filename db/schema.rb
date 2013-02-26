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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120325180121) do

  create_table "authors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "basket_lines", :force => true do |t|
    t.integer  "book_id"
    t.integer  "basket_id"
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "baskets", :force => true do |t|
    t.integer  "user_id"
    t.float    "importe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bill_lines", :force => true do |t|
    t.integer  "bill_id"
    t.integer  "book_id"
    t.integer  "cantidad"
    t.float    "precio"
    t.integer  "iva"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "numero"
    t.date     "fecha"
    t.float    "importe"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", :force => true do |t|
    t.integer  "editor_id"
    t.integer  "author_id"
    t.string   "titulo"
    t.string   "subtitulo"
    t.float    "precio"
    t.boolean  "digital"
    t.integer  "num_edicion"
    t.string   "ean"
    t.string   "isbn"
    t.date     "fecha_publicacion"
    t.integer  "stock"
    t.string   "idioma"
    t.text     "resumen"
    t.string   "situacion"
    t.integer  "iva"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books_templates", :id => false, :force => true do |t|
    t.integer "book_id"
    t.integer "supplier_id"
  end

  create_table "collections", :force => true do |t|
    t.integer  "editor_id"
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.string   "titulo"
    t.date     "fecha"
    t.text     "contenido"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editors", :force => true do |t|
    t.string   "nombre"
    t.string   "web"
    t.string   "isbn"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "texto_alternativo"
    t.integer  "tamano"
    t.string   "ruta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoice_lines", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "book_id"
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "numero"
    t.date     "fecha"
    t.float    "importe"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_lines", :force => true do |t|
    t.integer  "order_id"
    t.integer  "book_id"
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "numero"
    t.date     "fecha"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refund_lines", :force => true do |t|
    t.integer  "refund_id"
    t.integer  "book_id"
    t.integer  "cantidad"
    t.float    "precio"
    t.integer  "iva"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refunds", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "numero"
    t.date     "fecha"
    t.float    "importe"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservation_lines", :force => true do |t|
    t.integer  "book_id"
    t.integer  "reservation_id"
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", :force => true do |t|
    t.integer  "user_id"
    t.date     "fecha_inicio"
    t.date     "fecha_entrega"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.integer  "user_id"
    t.string   "cif"
    t.string   "fax"
    t.string   "web"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "fax"
    t.string   "telf_representante"
    t.string   "email"
    t.string   "web"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cod_cliente"
  end

  create_table "templates", :force => true do |t|
    t.integer  "course_id"
    t.integer  "school_id"
    t.string   "curso_lectivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textBills_textReservations", :id => false, :force => true do |t|
    t.integer "text_bill_id"
    t.integer "text_reservations_id"
  end

  create_table "text_bills", :force => true do |t|
    t.integer  "school_id"
    t.integer  "numero"
    t.date     "fecha"
    t.float    "importe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_reservation_lines", :force => true do |t|
    t.integer  "textbook_id"
    t.integer  "textReservation_id"
    t.integer  "cantidad"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_reservations", :force => true do |t|
    t.integer  "reservation_id"
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "cheque_libro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textbooks", :force => true do |t|
    t.integer  "book_id"
    t.string   "materia"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_tokens", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombre"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "direccion"
    t.string   "telefono"
    t.boolean  "activo"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
