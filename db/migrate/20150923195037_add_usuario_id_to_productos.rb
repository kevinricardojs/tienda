class AddUsuarioIdToProductos < ActiveRecord::Migration
  def change
    add_reference :productos, :usuario, index: true
    add_foreign_key :productos, :usuarios
  end
end
