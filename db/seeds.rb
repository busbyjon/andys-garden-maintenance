# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Image.create({
  :id => 1, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/after-1.jpg"),
})

Image.create({
  :id => 2, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/after-2.jpg"),
})

Image.create({
  :id => 3, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/after-3.jpg"),
})

Image.create({
  :id => 4, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-1.jpg"),
})

Image.create({
  :id => 5, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-2.jpg"),
})

Image.create({
  :id => 6, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-3.jpg"),
})

Image.create({
  :id => 7, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-4.jpg"),
})

Image.create({
  :id => 8, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-5.jpg"),
})

Image.create({
  :id => 9, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-6.jpg"),
})

Image.create({
  :id => 10, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-7.jpg"),
})

Image.create({
  :id => 11, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-8.jpg"),
})

Image.create({
  :id => 12, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/lawn-9.jpg"),
})

Image.create({
  :id => 13, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/shed-1.jpg"),
})

Image.create({
  :id => 14, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/shed-2.jpg"),
})
Image.create({
  :id => 15, 
  :imagefile => File.new("#{Rails.root}/public/img/gallery/large/shed-3.jpg"),
})