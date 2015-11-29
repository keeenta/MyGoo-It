class Profile < ActiveRecord::Base
	validates :cigrat, numericality: {greater_than_or_equal_to: 0}
	validates :cigrat, numericality: {less_than_or_equal_to: 1}
end
