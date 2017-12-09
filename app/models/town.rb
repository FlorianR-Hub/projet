class Town < ActiveRecord::Base 
  before_validation :load_position, on: [ :create, :update ]
  validates :latitude, :longitude, presence: true
  
  private
  def load_position
      places = Nominatim.search(self.nom).limit(1).first
      if places then
        self.latitude = places.lat
        self.longitude = places.lon
      end
    end
end
