class Student < ApplicationRecord
    validates :first_name, :last_name, :year_of_birth, :gender, :fathers_name, :mothers_name, :email, presence: true 
    validates :email, uniqueness: true
    validates :first_name,:last_name, length: {minimum: 8}

    scope :active_students_with_long_name, -> { where ("LENGTH(first_name) > 4")  }
end
