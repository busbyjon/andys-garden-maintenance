class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :phone
      t.string :query

      t.timestamps
    end
  end
end
