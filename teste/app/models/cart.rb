class Cart < ApplicationRecord
     has_many :items

	 def total_price
	   items.to_a.sum(&:full_price)
	 end
end
