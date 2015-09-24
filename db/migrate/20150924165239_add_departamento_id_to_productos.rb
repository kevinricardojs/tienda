class AddDepartamentoIdToProductos < ActiveRecord::Migration
  def change
    add_reference :productos, :departamento, index: true
    add_foreign_key :productos, :departamentos
  end
end
