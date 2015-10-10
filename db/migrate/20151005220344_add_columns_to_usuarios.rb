class AddColumnsToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :nombre, :string,null: false
    add_column :usuarios, :user_name, :string, unique: true, null: false
    add_column :usuarios, :mujer, :boolean, default: false
    add_column :usuarios, :hombre, :boolean, default: false
  end
end
