require "rails_helper"

RSpec.describe 'Patient index page' do
  before :each do
    @patient1 = Patient.create!(name: "Harvey Corman", age: 47)
    @patient2 = Patient.create!(name: "Brian Dancer", age: 23)
    @patient3 = Patient.create!(name: "Ben Sullivan", age: 32)
    @patient4 = Patient.create!(name: "Ellie Williams", age: 14)
    @patient5 = Patient.create!(name: "Riley Abel", age: 16)
  end
  
  # # As a visitor
  # # When I visit the patient index page
  # # I see the names of all adult patients (age is greater than 18),
  # # And I see the names are in ascending alphabetical order (A - Z, you do not need to account for capitalization)
end
