class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def self.sort_by_title
    all.sort_by { |obj| obj.title }
  end
  
  def self.sort_by_preference(order)
      if order == "ASC"
        sort_by_title
      else
        sort_by_title.reverse
      end
  end
  
end
