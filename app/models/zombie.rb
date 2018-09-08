class Zombie < ApplicationRecord
  scope :in_name_order, -> { order(:name) }
end
