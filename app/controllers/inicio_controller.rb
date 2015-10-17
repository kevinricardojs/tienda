class InicioController < ApplicationController
  def index
  end
  def micuenta
		if !usuario_signed_in? 
			redirect_to root_path	, notice: 'Debes iniciar sesión'	
		end
  end
end
