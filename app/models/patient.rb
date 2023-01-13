class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  
  # def self.adult_patients
  #   patients.where("age >= 18")
  # end
end
