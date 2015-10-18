class AddColumnsToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :nombre, :string ,null: false, default: ""
    add_column :usuarios, :user_name, :string, unique: true, null: false
    add_column :usuarios, :sexo, :boolean, default: false
    add_column :usuarios, :direccion, :string
  end
end
