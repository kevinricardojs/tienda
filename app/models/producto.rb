class Producto < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :departamento
end
