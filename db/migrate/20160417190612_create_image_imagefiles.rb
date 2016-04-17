class CreateImageImagefiles < ActiveRecord::Migration
  def self.up
    create_table :imagefiles do |t|
      t.integer    :image_id
      t.string     :style
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :imagefiles
  end
end
