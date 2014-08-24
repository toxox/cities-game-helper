class City < ActiveRecord::Base
  def self.search(query)
    where("first_letter like ?", "%#{query}%").sample
  end
end
