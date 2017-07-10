class Review

	attr_accessor :first_name, :last_name, :name, :reviews

@@reviews = []

	def initialize(name)
		@name = name
		@reviews = []
		customer.add_review(self)
	end

	def self.all
		@@reviews
	end

	def customer
		@reviews.collect do |review|
			review.customer
		end
	end

	def restaurant
		@reviews.collect do |review|
			review.restaurant
		end
	end
end

