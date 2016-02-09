class IzakayaProfile < ActiveRecord::Base
	class << self
		def search(query)
			rel = order("id")
			if query.present?
				rel = rel.where("izakaya_id LIKE ? OR place LIKE ?",
					"%#{query}%", "%#{query}%")
			end
			rel
		end
	end
end
