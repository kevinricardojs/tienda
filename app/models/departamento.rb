class Departamento < ActiveRecord::Base
	  has_many :productos
	  has_attached_file :imagen, styles: { mini: '48x48', pequena:'200x200' ,media: '500x500', grande: '1280x720' }
	validates_attachment_content_type :imagen, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
