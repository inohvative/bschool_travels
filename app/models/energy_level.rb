class EnergyLevel < ApplicationRecord
  # Direct associations

  has_many   :travel_preferences,
             :class_name => "TravelPersona",
             :foreign_key => "party_level_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
