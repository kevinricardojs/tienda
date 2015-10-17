class DashboardController < ApplicationController
  def index
  	if current_usuario.tipo_de_usuario == 3
  	@departamentos = Departamento.all
  	@usuarios = Usuario.all
  	else
  	redirect_to root_path ,notice: 'Esta prohibido para ti </3'	
  	end
  	
  end
end
