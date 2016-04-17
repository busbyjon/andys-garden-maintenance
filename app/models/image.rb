class Image < ActiveRecord::Base
	has_attached_file :imagefile, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"], :storage => :database, styles: { large: "400x400>", thumb: "145x145#" }, :path => ':rails_root/public/system/:class/:attachment/:id_partition/:style/:filename', :url => '/imagefile/:id/:style'
	validates_attachment :imagefile, content_type: { content_type: /\Aimage\/.*\Z/ }
end
