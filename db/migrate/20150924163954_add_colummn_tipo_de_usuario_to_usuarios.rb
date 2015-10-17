class AddColummnTipoDeUsuarioToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :tipo_de_usuario, :integer, default: 1
  end
end
