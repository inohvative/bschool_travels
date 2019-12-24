class City < ApplicationRecord
  # Direct associations

  has_many   :travel_preferences,
             :class_name => "TravelPersona",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
