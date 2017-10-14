class Town < ActiveRecord::Base 
  before_validation :load_position, on: [ :create, :update ]
  
  private
  def load_position
      places = Nominatim.search(self.nom).limit(1)
      if (places.first != nil) then
        self.latitude = places.first.lat
        self.longitude = places.first.lon
      end
    end
end
