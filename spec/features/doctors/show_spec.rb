require "rails_helper"

RSpec.describe 'Doctors show page' do
  before :each do
    @hospital1 = Hospital.create!(name: "Sacred Heart")
    
    @doctor1 = Doctor.create!(name: "Elliot Reid", specialty: "Internal Medicine", university: "Brown", hospital_id: @hospital1.id)
    # @doctor2 = Doctor.create!(name: "John Dorian", specialty: "Internal Medicine", university: "Winston", hospital_id: @hospital1.id)
    # @doctor3 = Doctor.create!(name: "Chris Turk", specialty: "Surgery", university: "Winston", hospital_id: @hospital1.id)
    
    @patient1 = Patient.create!(name: "Harvey Corman", age: 47)
    
    # @appointment1 = Appointment.create!(doctor_id: @doctor1.id, patient_id: @patient1.id)
    # @appointment2 = Appointment.create!(doctor_id: @doctor2.id, patient_id: @patient1.id)
    
  end
  
  describe "User Story 1" do
    describe "as a visitor" do
      it 'when I visit a doctor show page' do
        # # When I visit a doctor's show page
        visit doctor_path(@doctor1.id)
        # save_and_open_page
        # binding.pry
        # # I see all of that doctor's information including:
        # #  - name
        expect(page).to have_content(@doctor1.name)
        
        # #  - specialty
        expect(page).to have_content(@doctor1.specialty)
        
        # #  - university where they got their doctorate
        expect(page).to have_content(@doctor1.university)
        
        # # And I see the name of the hospital where this doctor works
        expect(page).to have_content(@doctor1.hospital.name)
        
        # # And I see the names of all of the patients this doctor has
        # binding.pry
        # expect(page).to have_content(@patient1.name)
      end
    end
  end
  
  describe "as a visitor" do
    
    before :each do
      visit doctor_path(@doctor1.id)
    end
    
    it 'when I visit a doctor show page' do
      save_and_open_page
      # # Then next to each patient's name, I see a button to remove that patient from that doctor's caseload
      # expect(page).to have_button("Remove Patient")
    end
    
    xit 'can remove a patient using the button' do
      # # When I click that button for one patient
      click_button "Remove Patient"
      
      # # I'm brought back to the Doctor's show page
      expect(current_path).to eq(doctor_path(@doctor1.id))
      # # And I no longer see that patient's name listed
      expect(page).to_not have_content(@patient1.name)
    end
    
    xit 'patient remains on other doctor patients after removal from one' do
      click_button "Remove Patient"
      # # And when I visit a different doctor's show page that is caring for the same patient,
      visit doctor_path(@doctor2.id)
      
      # # Then I see that the patient is still on the other doctor's caseload
      expect(page).to have_content(@patient1.name)
    end
  end
end