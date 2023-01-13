# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.destroy_all
Doctor.destroy_all
Hospital.destroy_all

hospital1 = Hospital.create!(name: "Sacred Heart")

doctor1 = Doctor.create!(name: "Elliot Reid", specialty: "Internal Medicine", university: "Brown", hospital_id: hospital1.id)
doctor2 = Doctor.create!(name: "John Dorian", specialty: "Internal Medicine", university: "Winston", hospital_id: hospital1.id)
doctor3 = Doctor.create!(name: "Elliot Reid", specialty: "Surgery", university: "Winston", hospital_id: hospital1.id)

patient1 = Patient.create!(name: "Harvey Corman", age: 47)

# appointment1 = Appointment.create!(doctor_id: doctor1.id, patient_id: patient1.id)