class Section < ApplicationRecord
  enum semester: [:Spring, :Summer, :Fall]
  belongs_to :course  # foreign key - course_id
  has_and_belongs_to_many :student

  validates :number, presence: true
  validates :number, numericality: { only_integer: true}

  validates :room_number, presence: true
  validates :room_number, numericality: { only_integer: true}

  # validates :student, presence: true

end

def description
  [course.name, number].join(", section ")
end