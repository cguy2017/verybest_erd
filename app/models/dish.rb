class Dish < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  has_many   :cuisines,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
