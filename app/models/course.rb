class Course < ApplicationRecord
  enum department: [:Computer_Science, :History, :Math, :Biology, :English, :Fencing]
  has_many :section, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: { message: '- A course with that name already exists.'}

  validates :number, presence: true
  validates :number, uniqueness: { message: '- A course with that number already exists.'}
  validates :number, numericality: { only_integer: true}

  validates :credit_hours, presence: true
  validates :credit_hours, numericality: { only_integer: true}

  validates_associated :section

end



