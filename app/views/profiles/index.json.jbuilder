json.array!(@profiles) do |profile|
  json.extract! profile, :id, :inzakaya_id, :open_time, :close_time, :image, :phone, :menus, :access, :place, :cigrat
  json.url profile_url(profile, format: :json)
end
