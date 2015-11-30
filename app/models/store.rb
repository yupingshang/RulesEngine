class Store < ActiveRecord::Base
  acts_as_mappable default_units: :km

  def self.within_distance_of(distance, coordinates)
    self.within(distance, origin: coordinates).select(:name, :lat, :lng)
  end
end
