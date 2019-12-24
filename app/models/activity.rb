class Activity < ApplicationRecord
  # Direct associations

  has_many   :travel_preferences,
             :class_name => "TravelPersona",
             :foreign_key => "activities_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
