class CreateIzakayaProfiles < ActiveRecord::Migration
  def change
    create_table :izakaya_profiles do |t|
      t.integer :izakaya_id
      t.time :open_time
      t.string :close_time
      t.binary :image
      t.integer :phone
      t.text :menus
      t.text :access
      t.string :place
      t.integer :cigaret

      t.timestamps null: false
    end
  end
end
