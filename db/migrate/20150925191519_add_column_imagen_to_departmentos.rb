class AddColumnImagenToDepartmentos < ActiveRecord::Migration
  def change
  	add_attachment :departamentos, :imagen
  end
end
