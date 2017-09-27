class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmark_dishes,
             :foreign_key => "venues_id",
             :dependent => :destroy

  belongs_to :dishes,
             :class_name => "Dish"

  # Indirect associations

  # Validations

end
