# Please copy/paste all three classes into this file to submit your solution!

# restaurant has customers through reviews

class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
    @reviews = []
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.detect {|restaurant| restaurant.name == name}
  end

  def reviews
    @reviews
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end
  end
end

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

class Customer

  attr_accessor :first_name, :last_name, :review, :restaurant,

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.detect {|person| person.name == name}
  end

  def self.find_all_by_first_name(name)
  	array.find_all {|customer| customer.first_name == name }
  end

  def self.all_names
  	self.all.map {|firstname, lastname|}
  		puts "#{first_name} #{last_name}"
  	end
  end

  def add_review(restaurant, content)
  	review = Review.new(restaurant, content)
  	@reviews << review
  	review.restaurant = self
  end


