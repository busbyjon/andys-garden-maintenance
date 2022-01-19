class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.boolean :setting

      t.timestamps null: false
    end
    Setting.create :name => "Form_Enabled", :setting => 1

  end
end
