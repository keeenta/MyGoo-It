class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :inzakaya_id
      t.time :open_time
      t.time :close_time
      t.binary :image
      t.integer :phone
      t.text :menus
      t.text :access
      t.string :place
      t.integer :cigrat

      t.timestamps null: false
    end
  end
end
