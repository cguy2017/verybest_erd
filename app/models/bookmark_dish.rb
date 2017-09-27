class BookmarkDish < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :class_name => "UserAccount"

  belongs_to :venues,
             :class_name => "Venue"

  # Indirect associations

  # Validations

end
