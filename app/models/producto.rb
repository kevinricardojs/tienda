class Producto < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :departamento
	has_attached_file :imagen, styles: { mini: '48x48', pequena:'200x200' ,media: '851x315' }
	validates_attachment_content_type :imagen, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
