class TravelPersona < ApplicationRecord
  # Direct associations

  belongs_to :age_cohort,
             :class_name => "AgeGroup"

  belongs_to :city

  belongs_to :user

  belongs_to :activities,
             :class_name => "Activity"

  # Indirect associations

  # Validations

end
