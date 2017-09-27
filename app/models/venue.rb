class Venue < ApplicationRecord
  # Direct associations

  belongs_to :dishes,
             :class_name => "Dish"

  # Indirect associations

  # Validations

end
