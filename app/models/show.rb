require 'pry'

class Show < ActiveRecord::Base
  
  def self.highest_rating 
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show
    show = Show.order('rating DESC').limit
    binding.pry
  end 
end 