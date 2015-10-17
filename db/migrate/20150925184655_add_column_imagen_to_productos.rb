class AddColumnImagenToProductos < ActiveRecord::Migration
  def change
  	add_attachment :productos, :imagen
  end
end
