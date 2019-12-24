class AgeGroup < ApplicationRecord
  # Direct associations

  has_many   :travel_preferences,
             :class_name => "TravelPersona",
             :foreign_key => "age_cohort_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
