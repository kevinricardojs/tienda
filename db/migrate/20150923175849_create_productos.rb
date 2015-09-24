class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
    	t.string :nombre, null: false 
    	t.string :desc_c, null: false
    	t.text :desc_l, null: false
    	t.string :estado, null: false
    	t.float :precio, null: false

      t.timestamps null: false
    end
  end
end
