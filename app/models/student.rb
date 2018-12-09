class Student < ApplicationRecord
  has_and_belongs_to_many :section

  validates :name, presence: true

  # validates :section, presence: true

end
