class TravelPersona < ApplicationRecord
  # Direct associations

  belongs_to :activities,
             :class_name => "Activity"

  # Indirect associations

  # Validations

end
