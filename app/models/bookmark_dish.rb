class BookmarkDish < ApplicationRecord
  # Direct associations

  belongs_to :venues,
             :class_name => "Venue"

  # Indirect associations

  # Validations

end
