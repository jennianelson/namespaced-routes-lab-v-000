class Artist < ActiveRecord::Base
  has_many :songs

  def self.sort_by_name
    all.sort_by { |a| a.name }
  end
  
  def self.sort_by_preference(order)
    if order == "ASC"
      sort_by_name
    else
      sort_by_name.reverse
    end
  end

end
