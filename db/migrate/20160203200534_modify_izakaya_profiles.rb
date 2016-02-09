class ModifyIzakayaProfiles < ActiveRecord::Migration
  def up
  	change_column :izakaya_profiles, :izakaya_id, :string
  end

  def down
  	change_column :izakaya_profiles, :izakaya_id, :integer
  end
end
