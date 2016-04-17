class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :order

      t.timestamps
    end
  end
end
