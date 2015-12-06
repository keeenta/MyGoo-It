json.array!(@izakaya_profiles) do |izakaya_profile|
  json.extract! izakaya_profile, :id, :izakaya_id, :open_time, :close_time, :image, :phone, :menus, :access, :place, :cigaret
  json.url izakaya_profile_url(izakaya_profile, format: :json)
end
