require 'pry'

class Show < ActiveRecord::Base
  
  def self.highest_rating 
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show
    Show.find_by('rating = ?', self.highest_rating)
  end 

  def self.lowest_rating
    show = Show.order(:rating).limit(1)[0]
  end 
end 