class Departamento < ActiveRecord::Base
	  has_many :productos
	  has_attached_file :imagen, styles: { mini: '48x48', pequena:'200x200' ,media: '851x315', grande: '1500x964' }
	validates_attachment_content_type :imagen, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
