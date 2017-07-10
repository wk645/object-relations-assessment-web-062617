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
