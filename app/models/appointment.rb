class Appointment < ApplicationRecord
  belongs_to :patients
  belongs_to :doctors
end
