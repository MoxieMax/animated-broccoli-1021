require "rails_helper"

RSpec.describe 'Doctors show page' do
  before :each do
    @hospital1 = Hospital.create!(name: "Sacred Heart")
    
    @doctor1 = Doctor.create!(name: "Elliot Reid", specialty: "Internal Medicine", university: "Brown", hospital_id: @hospital1.id)
    # @doctor2 = Doctor.create!(name: "John Dorian", specialty: "Internal Medicine", university: "Winston", hospital_id: @hospital1.id)
    # @doctor3 = Doctor.create!(name: "Elliot Reid", specialty: "Surgery", university: "Winston", hospital_id: @hospital1.id)
    
  end
  
  describe "User Story 1" do
    describe "as a visitor" do
      # # When I visit a doctor's show page
      visit doctor_path(@doctor1.id)
      # save_and_open_page
      binding.pry
      
    end
    # # As a visitor
    # # When I visit a doctor's show page
    # # I see all of that doctor's information including:
    # #  - name
    # #  - specialty
    # #  - university where they got their doctorate
    # # And I see the name of the hospital where this doctor works
    # # And I see the names of all of the patients this doctor has
  end
end